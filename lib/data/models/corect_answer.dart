import 'package:flutter/cupertino.dart';

class CorrectAnswer{
 Question question;
 String firstAns;
 String secondAns;
 String thirdAns;
 String fourthAns;
 int answer;

 CorrectAnswer({
  required this.question,
  required this.firstAns,
  required this.secondAns,
  required this.thirdAns,
  required this.fourthAns,
  required this.answer,});

@override

String toString(){
  return 'CorrectAnswer {question:$question,firstAns:$firstAns,secondAns:$secondAns,thirdAns:$thirdAns}';
}
@override
bool operator==(Object other)=>
   identical(this,other)||
      other is CorrectAnswer &&
           runtimeType==other.runtimeType &&
            question==other.question;
}
class Question{
  final Operand firstOperand;
  final String firstOperator;
  final Operand secondoperand;
  final String? secondOperator;
  final Operand? thirdOperand;
  final int answer;

  Question({
    required this.firstOperand,
    required this.firstOperator,
    required this.secondoperand,
    required this.secondOperator,
    required this.thirdOperand,
    required this.answer,
  });
}
class Operand{
  final String value;
  final bool isQuestionMark;

  Operand({required this.value,required this.isQuestionMark});
}