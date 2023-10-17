import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class LectureTwo extends StatefulWidget {
  const LectureTwo({super.key});
  @override
  State<LectureTwo> createState() => _LectureTwoState();
}

class _LectureTwoState extends State<LectureTwo> {
  Color firstColor = MyColors.appColor;
  Color secondColor = MyColors.aqua;
  Color thirdColor = MyColors.bluecolor;
  Color fourColor = MyColors.browncolor;
  Color? tempColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
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

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(

                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.transparent ,
                  border: Border.all(
                    color: Colors.black,
                    width: 3

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
                      color: firstColor,
                    ),

                    Container(
                      height:70 ,
                      width: 70,
                      color: secondColor,
                    ),
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
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      color: thirdColor,
                    ),
                    Container(
                      height:70 ,
                      width: 70,
                      color: fourColor,
                    ),
                  ],
                ),

              ],
        ),



              ),
              ElevatedButton(
                  onPressed:(){
                 setState(() {
                   tempColor=firstColor;
                   firstColor=secondColor;
                   secondColor=thirdColor;
                   thirdColor=fourColor;
                   fourColor=tempColor!;
                 });
              },
                  child: Text('Swap')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
   //Single Child and Multi Child Widgets
// body: SafeArea(
// child:Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.end,
//
// children: [
//
// Container(
// height: 50,
// width: 40,
// color: Colors.red,
// ),
// Container(
// height: 100,
// width: 40,
// color: Colors.green,
// ),
// Container(
// height: 150,
// width: 40,
// color: Colors.yellow,
// ),
// Container(
// height: 200,
// width: 40,
// color: Colors.blue,
// ),
// Container(
// height: 250,
// width: 40,
// color: Colors.pink,
// ),
// ],
// ),
// ),