import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_self_udemy/Answer_botton.dart';
import 'package:quiz_app_self_udemy/backgroundColour.dart';
import 'package:quiz_app_self_udemy/quiz_data.dart';
import 'package:quiz_app_self_udemy/result_screen.dart';

class quizScreen extends StatefulWidget{
  const quizScreen({super.key});
  @override
  State<quizScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<quizScreen>{

  var selectedAnswer=[];
  var index=0;
  void onSelectAnswer(String ClickedAnswer){
    setState(() {
      selectedAnswer.add(ClickedAnswer);
      index++;
      if(questions.length==index){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[index];
    return Container(
      width: double.infinity,
      decoration: backgroundColour(),
      child: Container(
        //decoration: backgroundColour(),
        margin:const  EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.question,
              style:GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                decoration: TextDecoration.none
              ),
            ),

            const SizedBox(height: 30,),
            ... currentQuestion.options.map((item) {
              return AnswerBotton(
                  ontap: () => onSelectAnswer(item),
                  choosedAnswer: (item)
              );
            })
          ],
        ),
      ),
    );
  }
}
