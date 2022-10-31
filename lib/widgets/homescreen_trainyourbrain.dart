import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrainYourBrainButton extends StatefulWidget {
  const TrainYourBrainButton({super.key});

  @override
  State<TrainYourBrainButton> createState() => _TrainYourBrainButtonState();
}

class _TrainYourBrainButtonState extends State<TrainYourBrainButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35),
      width: 350,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(colors:[
        Colors.blue,
        Colors.cyan
      ])
      ),
      child: Row(
        children: [
          Image.asset("assets/images/thinking.png",height: 40,width: 40,),
          SizedBox(width: 20,),
          Text("Train Your Brain",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}