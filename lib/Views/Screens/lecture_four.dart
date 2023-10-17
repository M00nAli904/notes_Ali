import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';

class LectureFour extends StatefulWidget {

  const LectureFour({super.key});


  @override
  State<LectureFour> createState() => _LectureFourState();
}

class _LectureFourState extends State<LectureFour> {
  Color firstcolor = MyColors.bluecolor;
  Color secondcolor = MyColors.redColor;
  Color? tempColor;
  String firstText = 'blue color';
  String secondText = 'red color';
  String? tempText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.aqua,
    body: SafeArea(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: firstcolor,
                child: Center(
                  child: Text(firstText),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: secondcolor,
                child: Center(
                  child: Text(secondText),
                ),
              ),
            ],
          ),
      ElevatedButton(
       onPressed: (){
           setState(() {
             tempColor=firstcolor;
             firstcolor=secondcolor;
             secondcolor=tempColor!;
             tempText=firstText;
             firstText=secondText;
             secondText=tempText!;
           });
       },
        child: Text(
            'Press'
        ),
      )

        ],
      ),
    ),
    );
  }
}

