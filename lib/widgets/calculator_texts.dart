import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorText extends StatefulWidget {
  const CalculatorText({super.key});

  @override
  State<CalculatorText> createState() => _CalculatorTextState();
}

class _CalculatorTextState extends State<CalculatorText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:100,
      height: 50,
      //color: Colors.red,
    );
  }
}