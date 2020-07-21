import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (questionIndex > 0) {
        questionIndex = 0;
      } else {
        questionIndex = questionIndex + 1;
      }
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["what is your name?", "Are you married?"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is title test"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
