import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/widgets/mathpuzzleScreen_backward.dart';
import 'package:game/widgets/mathpuzzleScreen_list.dart';
import 'package:game/widgets/mathpuzzleScreen_texts.dart';

class MathPuzzleScreen extends StatefulWidget {
  const MathPuzzleScreen({super.key});

  @override
  State<MathPuzzleScreen> createState() => _MathPuzzleScreenState();
}

class _MathPuzzleScreenState extends State<MathPuzzleScreen> {
  List<String> Texts=[
    "Calculator",
    "Guess the sign?",
    "Correct answer",
    "Quick calculation"
  ];
 List<String> Icons=[
  "assets/images/clock.png",
  "assets/images/question_mark.png",
  "assets/images/check.png",
  "assets/images/running.png",
 ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                child: BackwardButton(),
              ),
              SizedBox(height:30),
              Padding(
                padding: const EdgeInsets.only(left:20,right:20),
                child: TextsMathPuzzle(),
              ),
             Padding(
               padding: const EdgeInsets.only(right: 20,left: 20,top:30),
               child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Texts.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                  return MathPuzzleScreenList(text1: Texts[index], icon1: Icons[index]);
                })),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}