import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/calculator.dart';

class CalculatorGameOver extends StatefulWidget {
  const CalculatorGameOver({super.key});

  @override
  State<CalculatorGameOver> createState() => _CalculatorGameOverState();
}

class _CalculatorGameOverState extends State<CalculatorGameOver> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 230,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 139, 137, 137),
          ),
          child: Column( 
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Game Over!!!",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              Padding(
              padding: const EdgeInsets.only(top: 10),
                child: Text("Your highest score is ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
              ),
              Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 35),
                child: GestureDetector(
                  onTap: (() {
            
                  }),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [
                        Colors.deepPurple,
                        Colors.purple
                      ])
                    ),
                    child: Text("RESTART",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                  ),
                ),
              ),
               Padding(
              padding: const EdgeInsets.only(top: 8,left: 20),
                 child: GestureDetector(
                  onTap: (() {
                    
                  }),
                   child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [
                        Colors.deepPurple,
                        Colors.purple
                      ])
                    ),
                    child: Container(
                      child: Text("X",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                               ),
                 ),
               ),
              ],)
              
            ],
          ),
        ),
      ),
    );
  }
}