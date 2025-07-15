import 'package:flutter/material.dart';
import 'package:quiz_app/dummy_db.dart';
import 'package:quiz_app/model/question.dart';
import 'package:quiz_app/view/quiz_screen/widgets/options_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0;
  int? clickedIndex;

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = DummyDb.questions[questionIndex];

    return Scaffold(
      appBar: AppBar(actions: [Text("1 / 10")]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white10,
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    currentQuestion.question,
                  ),
                ),
              ),
            ),

            Column(
              spacing: 16,
              children: List.generate(
                currentQuestion.options.length,
                (index) => OptionsCard(
                  value: currentQuestion.options[index],
                  color: _cardColor(index),
                  onTap: () {
                    if (clickedIndex == null) {
                      clickedIndex = index;
                      setState(() {});
                    }
                  },
                ),
              ),
            ),

            Visibility(
              visible: clickedIndex != null,
              child: InkWell(
                onTap: () {
                  if (questionIndex < DummyDb.questions.length - 1) {
                    questionIndex++;
                    clickedIndex = null;
                    setState(() {});
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue,

                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _cardColor(int index) {
    Question currentQuestion = DummyDb.questions[questionIndex];
    if (clickedIndex != null && index == currentQuestion.ansIndex) {
      return Colors.green;
    }

    if (index == clickedIndex) {
      if (clickedIndex != currentQuestion.ansIndex) {
        return Colors.red;
      }
    }

    return Colors.grey;
  }
}
