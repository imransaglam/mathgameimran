
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/widgets/calculator_appbar.dart';
import 'package:game/widgets/calculator_input.dart';
import 'package:game/widgets/calculator_texts.dart';
import 'package:game/widgets/calculator_time.dart';

import '../widgets/calculator_gameover.dart';
import '../widgets/calculator_info.dart';
import '../widgets/calculator_pausegame.dart';
import '../widgets/mathpuzzleScreen_backward.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String>numbers=[
    "7",
    "8",
    "9",
    "4",
    "5",
    "6",
    "1",
    "2",
    "3",
    "Clear",
    "0",
    "Delete"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [ 
          Column(
        children: [
          AppBarCalculator(),
         // TimerCalculator(),
          CalculatorInfo(),
          CalculatorText(),
          CalculatorInput(),
          Container(
            width: 300,
            height: 500,
            child:GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                 mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                          itemCount: numbers.length
                , itemBuilder: ((context, index) {
                  return Container(
                    
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffD9D9D9).withOpacity(0.05),

                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(numbers[index],style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500),)),
                  );
                  
                })),
      
      ),

      
      ],

      ),
      CalculatorGameOver(),
      CalculatorPauseGame()
        ],)
    );
  }
}