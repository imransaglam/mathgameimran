import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorInfo extends StatefulWidget {
  const CalculatorInfo({super.key});

  @override
  State<CalculatorInfo> createState() => _CalculatorInfoState();
}

class _CalculatorInfoState extends State<CalculatorInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("CALCULATOR ",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w500,fontSize: 10),),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context,
              backgroundColor: Colors.deepPurpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24)
                )
              ),
               builder: (BuildContext context) {
                 return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Quick Calculation",style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage("assets/images/calculator_intro.gif"),
                            fit: BoxFit.fill,
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Solve simple equation one by one.",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                    ),
                    Text("Faster you solve,more time will be",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                    Text("given to solve next equation.",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),

                     Padding(
                        padding: const EdgeInsets.only(top: 10),
                       child: Text("  1.0 for correct answer",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 10),
                       child: Text("-1.0 for wrong answer",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                     ),
                    GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                        width:200,height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [
                          Colors.pink,
                          Colors.pinkAccent
                        ])
                      ),
                        child: Text("Close",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),))),
                    ),
                  ],
                  
                 );
               }
               );
            },
            child: Icon(Icons.info,color: Colors.white,size: 15,))
        ],

      ),
    );
  }
}