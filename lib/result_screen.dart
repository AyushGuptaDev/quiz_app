import 'package:flutter/material.dart';
import 'package:quiz_app_self_udemy/backgroundColour.dart';

class ResultScreen extends StatelessWidget{
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
          Container(height: 200,),
          ElevatedButton(
              onPressed: (){},
              child: const Text("restart")
          )
        ],
      ),
    );
  }

}