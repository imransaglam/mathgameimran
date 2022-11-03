import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorPauseGame extends StatefulWidget {
  const CalculatorPauseGame({super.key});

  @override
  State<CalculatorPauseGame> createState() => _CalculatorPauseGameState();
}

class _CalculatorPauseGameState extends State<CalculatorPauseGame> {
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
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Do you want to exit?",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Your score is",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
              ),
              Row(
                children: [
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
                    child: Text("CANCEL",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
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
                      child: Text("YES",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                               ),
                 ),
               ),
      
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}