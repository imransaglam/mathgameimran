import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          //alignment: Alignment.center,
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: Column( 
            children: [
              Text("Game Over!!!",style: TextStyle(color: Colors.white),),
              Text("Your highest score is 0.0",style: TextStyle(color: Colors.white),),
              Row(children: [
Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text("RESTART",style: TextStyle(color: Colors.white),),
              ),
               Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Container(
                  child: Text("X",style: TextStyle(color: Colors.white),)),
              ),
              ],)
              
            ],
          ),
        ),
      ),
    );
  }
}