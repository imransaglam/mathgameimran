import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TimerCalculator extends StatefulWidget {
  const TimerCalculator({super.key});

  @override
  State<TimerCalculator> createState() => _TimerCalculatorState();
}

class _TimerCalculatorState extends State<TimerCalculator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width ,
      height: 40,
      //color: Colors.green,
      child: LinearPercentIndicator(
        animation: true,
        animationDuration: 60000,
        lineHeight: 20.0,
        percent: 1,
        progressColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple.shade200,

      ),
    );
  }
}