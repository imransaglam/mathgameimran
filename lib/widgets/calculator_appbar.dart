import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mathpuzzleScreen_backward.dart';

class AppBarCalculator extends StatefulWidget {
  const AppBarCalculator({super.key});

  @override
  State<AppBarCalculator> createState() => _AppBarCalculatorState();
}

class _AppBarCalculatorState extends State<AppBarCalculator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           color: Colors.red,
        ),
        child: Row(
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BackwardButton(),
              ),
              SizedBox(width: 100,),
              Image.asset("assets/images/champ.png",height: 25,width: 25,),
              Text("0",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),)    
          ],
        ),
      ),
    );
  }
}