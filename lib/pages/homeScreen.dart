import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/widgets/homescreen_appbar.dart';
import 'package:game/widgets/homescreen_mathpuzzle.dart';
import 'package:game/widgets/homescreen_memorypuzzle.dart';
import 'package:game/widgets/homescreen_trainyourbrain.dart';
import 'package:game/widgets/texts.dart';

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
              padding: const EdgeInsets.only(right: 15,left: 15,top: 15),
              child: AppBarHome(),
            ),
            SizedBox(height: 40,),
            Texts(),
            SizedBox(height: 40,),
            MathPuzzleButton(),
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