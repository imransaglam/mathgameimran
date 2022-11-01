import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/pages/calculator.dart';

class MathPuzzleScreenList extends StatefulWidget {
  final String text1;
  final String icon1;
  const MathPuzzleScreenList({super.key, required this.text1, required this.icon1});

  @override
  State<MathPuzzleScreenList> createState() => _MathPuzzleScreenListState();
}

class _MathPuzzleScreenListState extends State<MathPuzzleScreenList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: (() {
          Navigator.push(context, 
          MaterialPageRoute(builder: ((context) =>CalculatorScreen() )));
        }),
        child: Container(
          padding: EdgeInsets.only(left:20),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors:[
            Colors.orange,
            Colors.yellow,
          ])
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Image.asset(widget.icon1,height: 30,width: 30,),
                  ),
                  SizedBox(width:15,),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(widget.text1,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right:25,top:15 ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: [
                    Text("Score:",style: TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(width: 20,),
                    Image.asset("assets/images/champ.png",height: 30,width: 30,),
                    Text("0",style: TextStyle(color:Colors.white,fontSize: 20),),
                    SizedBox(width: 150,),
                    Image.asset("assets/images/play_button.png",width: 40,height: 40),

                  
                  ],
                ),
              )
            ],
          
          ),
      
        ),
      ),
    );
  }
}