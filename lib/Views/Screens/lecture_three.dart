import 'package:flutter/material.dart';

import 'package:untitled4/Helpers/constants.dart';


class LectureThree extends StatefulWidget {
  const LectureThree({super.key});
  @override
  State<LectureThree> createState() => _LectureThreeState();
}

class _LectureThreeState extends State<LectureThree> {
  Color firstColor = MyColors.redColor;

  Color secondColor = MyColors.aqua;

  String firstText = "red";

  String secondText = "aqua";

  Color? tempColor;

  String? tempText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.yellow,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios,color: MyColors.blackcolor,
            size: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Container(
                height: 70,
                width: 70,
                color: firstColor,
                  child: Center(
                    child:Text(firstText),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: secondColor,
                  child: Center(
                    child: Text(secondText),
                  ),
                ),
                ]
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    tempColor = firstColor;
                    firstColor = secondColor;
                    secondColor = tempColor!;
                   tempText = firstText;
                   firstText = secondText;
                   secondText = tempText!;
                  });

                },
              child: Text("Swap"),
            )
          ],
        ),
      ),
    );
  }
}



