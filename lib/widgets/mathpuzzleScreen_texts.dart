import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextsMathPuzzle extends StatelessWidget {
  const TextsMathPuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Math Puzzle",style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight.w600),),
        SizedBox(height: 10,),
        Text("Each game with simple calculation with different approach.",style: TextStyle(color: Color.fromARGB(255, 82, 81, 81),fontSize: 15,fontWeight: FontWeight.w400),)
      ],
    );
  }
}