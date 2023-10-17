import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class LectureAssign extends StatefulWidget {
  const LectureAssign({super.key});

  @override
  State<LectureAssign> createState() => _LectureAssignState();
}
class _LectureAssignState extends State<LectureAssign> {

  Color firstColor = MyColors.redColor;
  Color secondColor = MyColors.bluecolor;
  Color thirdColor = MyColors.yellow;
  Color fourColor = MyColors.bluecolor;
  Image firstImage = Image.asset('assets/images/Screenshot (42).png');
  Image secondImage = Image.asset('assets/images/IMG_20230911_075105_204-removebg-preview (4).png');
  Image thirdImage = Image.asset('assets/images/Screenshot__43_-removebg-preview.png');
  String firstText = "red";
  String secondText = "white";
  String thirdText = "yellow";
  String fourText = "blue";
  Color? tempColor;
  String? tempText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: firstColor,


                ),

                Container(
                  height: 80,
                  width: 80,
                  color: secondColor,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: thirdColor,


                ),
                Container(
                  height: 80,
                  width: 80,
                  color: fourColor,
                ),
              ],


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                tempColor=firstColor;
                firstColor=secondColor;
                secondColor=thirdColor;
                thirdColor=fourColor;
                fourColor=tempColor!;

                });

              },
              child: Text("Clock"),

            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                });

              },
              child: Text("Ali"),

            ),
            ElevatedButton(
              onPressed: (){
                setState(() {

                });

              },
              child: Text("Saied"),

            ),
            ElevatedButton(
              onPressed: (){
                setState(() {

                });

              },
              child: Text("Asfand"),

            ),
              ],
    ),
         ]



        ),
      ),
    );
  }
}
