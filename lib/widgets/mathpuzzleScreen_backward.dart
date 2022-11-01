import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackwardButton extends StatefulWidget {
  const BackwardButton({super.key});

  @override
  State<BackwardButton> createState() => _BackwardButtonState();
}

class _BackwardButtonState extends State<BackwardButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pop(context);
      }),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}