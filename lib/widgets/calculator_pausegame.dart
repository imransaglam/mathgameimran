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
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Text("Do you want to exit?",style: TextStyle(color: Colors.white),),
              Row(
                children: [
                  Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text("Cancel",style: TextStyle(color: Colors.white),),
              ),
               Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Container(
                  child: Text("Yes",style: TextStyle(color: Colors.white),)),
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