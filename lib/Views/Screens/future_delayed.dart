import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class FutureDelayed extends StatefulWidget {
  const FutureDelayed({super.key});

  @override
  State<FutureDelayed> createState() => _FutureDelayedState();
}

class _FutureDelayedState extends State<FutureDelayed> {
Color firstcolor = MyColors.redColor;

  Color secondtcolor = MyColors.bluecolor;

  Color thirdcolor = MyColors.yellow;

  Color? temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: firstcolor,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: secondtcolor,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: thirdcolor,
                  ),
                ],
              ),
            ),
           ElevatedButton(
             onPressed: (){
             Future.delayed(Duration(seconds:5),(){

               Timer.periodic(Duration(milliseconds: 200), (timer) {
                 setState(() {
                   temp=firstcolor;
                   firstcolor=secondtcolor;
                   secondtcolor=thirdcolor;
                   thirdcolor=temp!;
                 });
               });
             },
             );
             },
             child: Text('press'),
           ),


          ],
        ),
      ),
    );
  }
}
