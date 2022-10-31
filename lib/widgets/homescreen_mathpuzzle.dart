import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MathPuzzleButton extends StatefulWidget {
  const MathPuzzleButton({super.key});

  @override
  State<MathPuzzleButton> createState() => _MathPuzzleButtonState();
}

class _MathPuzzleButtonState extends State<MathPuzzleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 70),
      width: 350,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(colors:[
        Colors.orange,
        Colors.yellow
      ])
      ),
      child: Row(
        children: [
          Image.asset("assets/images/operations.png",height: 30,width: 30,),
          SizedBox(width: 20,),
          Text("Math Puzzle",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}