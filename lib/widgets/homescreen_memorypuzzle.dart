import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MemoryPuzzleButton extends StatefulWidget {
  const MemoryPuzzleButton({super.key});

  @override
  State<MemoryPuzzleButton> createState() => _MemoryPuzzleButtonState();
}

class _MemoryPuzzleButtonState extends State<MemoryPuzzleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35),
      width: 350,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(colors:[
        Colors.red,
        Colors.pink
      ])
      ),
      child: Row(
        children: [
          Image.asset("assets/images/brain.png",height: 35,width: 35,),
          SizedBox(width: 20,),
          Text("Memory Puzzle",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}