import 'package:flutter/material.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // // themeMode: ThemeMode.system,
      // darkTheme: ThemeData.dark(),
      theme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      home: const QuizScreen(),
    );
  }
}
