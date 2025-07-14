import 'package:quiz_app/model/question.dart';

class DummyDb {
  static List<Question> questions = [
    Question(
      question: "What is Flutter?",
      options: [
        "A programming language",
        "A database",
        "An SDK",
        "An operating system",
      ],
      ansIndex: 2,
    ),
    Question(
      question: "Which programming language is used to write Flutter apps?",
      options: ["Kotlin", "Java", "Dart", "Swift"],
      ansIndex: 2,
    ),
    Question(
      question: "Which widget is used to create a scrollable list of items?",
      options: ["Row", "Column", "ListView", "Stack"],
      ansIndex: 2,
    ),
    Question(
      question: "What is the parent widget of all Flutter widgets?",
      options: ["Container", "MaterialApp", "Widget", "Scaffold"],
      ansIndex: 2,
    ),
    Question(
      question: "Which widget is used to create an app bar in Flutter?",
      options: ["AppBar", "Toolbar", "TopBar", "NavigationBar"],
      ansIndex: 0,
    ),
    Question(
      question: "How do you define a stateless widget?",
      options: [
        "extends StatelessWidget",
        "extends StatefulWidget",
        "implements Stateless",
        "None of these",
      ],
      ansIndex: 0,
    ),
    Question(
      question: "Which method is called when a StatefulWidget is created?",
      options: ["initState()", "build()", "dispose()", "create()"],
      ansIndex: 0,
    ),
    Question(
      question: "Which widget is used for layout and positioning?",
      options: ["ListView", "Column", "Padding", "All of the above"],
      ansIndex: 3,
    ),
    Question(
      question: "What does the `setState()` method do?",
      options: [
        "Deletes a widget",
        "Refreshes the UI",
        "Creates a new screen",
        "None of the above",
      ],
      ansIndex: 1,
    ),
    Question(
      question: "Which package is used to make HTTP requests in Flutter?",
      options: ["flutter_http", "http", "net", "networking"],
      ansIndex: 1,
    ),
    Question(
      question: "What is a hot reload in Flutter?",
      options: [
        "Restarting app",
        "Saving code",
        "Updating UI without full restart",
        "Clearing cache",
      ],
      ansIndex: 2,
    ),
    Question(
      question: "Which widget helps in building forms?",
      options: ["Form", "TextFormField", "Both", "None"],
      ansIndex: 2,
    ),
    Question(
      question:
          "Which state management approach is provided by default in Flutter?",
      options: ["Bloc", "GetX", "Provider", "setState"],
      ansIndex: 3,
    ),
    Question(
      question: "Which widget is commonly used to show progress in Flutter?",
      options: [
        "ProgressView",
        "Loader",
        "CircularProgressIndicator",
        "SpinWidget",
      ],
      ansIndex: 2,
    ),
    Question(
      question: "Which command is used to create a new Flutter project?",
      options: [
        "flutter init",
        "flutter create",
        "flutter new",
        "flutter start",
      ],
      ansIndex: 1,
    ),
  ];
}
