import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Texts extends StatefulWidget {
  const Texts({super.key});

  @override
  State<Texts> createState() => _TextsState();
}

class _TextsState extends State<Texts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Math Matrix",style: TextStyle(color: Colors.white,fontSize: 30),),
        SizedBox(height: 10,),
        Text("Train Your Brain, Improve Your Math Skill",style: TextStyle(color: Color.fromARGB(255, 138, 137, 137),fontSize: 20))
      ],
    );
  }
}