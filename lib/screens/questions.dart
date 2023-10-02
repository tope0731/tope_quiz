import 'package:basta3rd/data/question_list.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final question_list = QUESTION_LIST;
  final answer_list = ANSWER_LIST;
  int questionIndex = 0;
  int score = 0;
  bool isFinished = false;

  void checkAnswer(bool answer) {
    print(answer);
    score += answer == answer_list[questionIndex] ? 1 : 0;
    setState(() {
      if (questionIndex < question_list.length - 1) {
        questionIndex++;
      } else {
        //show score screen
        isFinished = true;
      }
    });
  }

  Widget showQuestion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question_list[questionIndex],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () => checkAnswer(true), child: Text('TRUE'))),
            SizedBox(
              width: 9,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () => checkAnswer(false), child: Text('FALSE'))),
          ],
        ),
      ],
    );
  }

  Widget showScore() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You got'),
          SizedBox(
            height: 10,
          ),
          Text(
            '$score/${question_list.length}',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: isFinished ? showScore() : showQuestion(),
      ),
    );
  }
}
