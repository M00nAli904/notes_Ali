import 'package:flutter/material.dart';
class LectureFive extends StatelessWidget {
  const LectureFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
          child:Center(
            child: Container(
        height:300,
        width:300,
        decoration:BoxDecoration(
    color:Colors.blue,
        border: Border.all(
          width:3
        )
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.red,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.pink,
              )
            ],
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                height: 70,
                width: 70,
                color: Colors.brown
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.lightGreen,
              ),
            ],
          ),
        ],
      ),
          ),
          ),
    ),
    );
  }
}
