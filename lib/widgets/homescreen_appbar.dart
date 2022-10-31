import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({super.key});

  @override
  State<AppBarHome> createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Container(
    width: 80,
    height: 50,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 83, 79, 79),
      borderRadius: BorderRadius.circular(20)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/champ.png",height: 30,width: 30,),
        Text(" 0",style: TextStyle(color: Colors.white,fontSize: 25),)
      
      ],

    ),
  ),
  Container(
    child: Image.asset("assets/images/brightness.png",height: 30,width: 30,),
  )

],
    );
  }
}