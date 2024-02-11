

import 'package:flutter/material.dart';
import 'package:quiz_app_self_udemy/Quiz.dart';
import 'package:quiz_app_self_udemy/backgroundColour.dart';
import 'package:quiz_app_self_udemy/quiz_data.dart';
import 'package:quiz_app_self_udemy/main.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key});
  //final List<String> choosenAnswer;
  //final void Function() ontapRe;

  List<Map<String,Object>>getSummaryData(){
    List<Map<String,Object>> Summary=[];
    for (int i=0;i<questions.length;i++){
      Summary.add({
        'questionIndex': i,
        'questionText': questions,
        'coosenAnswer': selectedAnswer,
        'correctAnswer': questions[i].options[0],
      });
    }
     return Summary;
  }


  @override
  Widget build(BuildContext context) {


    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: backgroundColour(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text ("no of correct answer"),
          Container(
            height: 200,
            child: const Column(
              children: [
                Row(
                  children: [

                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const StaringPage()));
                print(selectedAnswer);
                selectedAnswer=[];
              },
              child: const Text("restart")
          )
        ],
      ),
    );
  }
}