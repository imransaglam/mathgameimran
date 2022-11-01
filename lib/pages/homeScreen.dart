import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/pages/mathpuzzleScreen.dart';
import 'package:game/widgets/homescreen_appbar.dart';
import 'package:game/widgets/homescreen_mathpuzzle.dart';
import 'package:game/widgets/homescreen_memorypuzzle.dart';
import 'package:game/widgets/homescreen_trainyourbrain.dart';
import 'package:game/widgets/homescreen_texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20
              ,top: 30),
              child: AppBarHome(),
            ),
            SizedBox(height: 40,),
            Texts(),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (() {
               Navigator.push(context, 
               MaterialPageRoute(builder: ((context) => MathPuzzleScreen()))
               );
              }),
              child: MathPuzzleButton()),
            SizedBox(height: 40,),
            MemoryPuzzleButton(),
            SizedBox(height: 40,),
            TrainYourBrainButton(),

          ],
        ),
      ),

    );
  }
}