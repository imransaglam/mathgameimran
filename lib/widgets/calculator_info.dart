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
          
               builder: (BuildContext context) {
                 return Container(
                  color: Colors.black,
             
                  height: 400,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepPurpleAccent,
                      ),
                      
                      width: 50,
                      height: 50,
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                        width:100,height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                        child: Text("Close",style: TextStyle(color:Colors.white),))),
                    ),
                  ),
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