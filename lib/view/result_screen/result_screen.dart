import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/dummy_db.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnsCount});
  final int rightAnsCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              spacing: 30,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: index == 1 ? 50 : 0),
                  child: Icon(
                    Icons.star,
                    color: index < starCount() ? Colors.yellow : Colors.grey,
                    size: index == 1 ? 90 : 60,
                  ),
                ),
              ),
            ),
            Text("Congratulations"),
            Text("Your Scrore"),
            Text("${rightAnsCount} / ${DummyDb.questions.length}"),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              label: Text("Retry"),
              icon: Icon(Icons.replay_outlined),
            ),
          ],
        ),
      ),
    );
  }

  int starCount() {
    double percentage = (rightAnsCount / DummyDb.questions.length) * 100;
    log(percentage.toString());
    if (percentage >= 80) {
      return 3;
    } else if (percentage >= 50) {
      return 2;
    } else if (percentage >= 30) {
      return 1;
    }

    return 0;
  }
}
