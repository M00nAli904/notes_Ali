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
  Color thirdColor = MyColors.bluecolor;
  Color fourColor = MyColors.whitecolor;
  String firstText = 'Red';
  String secondText = 'aqua';
  String thirdText = 'blue';
  String fourText = 'white';
  Color? tempcolor;

  String? tempText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.yellow,

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: firstColor,
                  child: Center(
                    child: Text(firstText),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: secondColor,
                  child: Center(
                    child:Text(secondText),
                ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: thirdColor,
                  child: Center(
                    child:Text(thirdText),
                  ),
                ),

                    ]
            ),
            ElevatedButton(
                onPressed:(){
                  setState(() {
                    print ('swaped');
                    tempcolor = firstColor;
                    firstColor = secondColor;
                    secondColor=thirdColor;
                    thirdColor=fourColor;
                    fourColor=tempcolor!;
                    tempText=firstText;
                    firstText=secondText;
                    secondText=thirdText;
                    thirdText=fourText;
                    fourText=tempText!;
                  });
                },
                child: Text('Swap'),
            )

          ],
        ),
      )
    );
  }
}
