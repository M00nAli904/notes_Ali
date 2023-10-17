import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
import 'package:untitled4/Views/Screens%20two/lecture_one.dart';
import 'package:untitled4/Views/Screens%20two/lecture_three.dart';
import 'package:untitled4/Views/Screens/lecture_assign.dart';
import 'package:untitled4/Views/Screens/lecture_five.dart';
import 'package:untitled4/Views/Screens/lecture_four.dart';
import 'package:untitled4/Views/Screens/lecture_two.dart';
import 'package:untitled4/Views/Screens/screen_login.dart';
class ExpandedFlutter extends StatefulWidget {
  const ExpandedFlutter({super.key});

  @override
  State<ExpandedFlutter> createState() => _ExpandedFlutterState();
}

class _ExpandedFlutterState extends State<ExpandedFlutter> {
  TextEditingController _Controller = TextEditingController();
  String result = 'Your text will here';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
 body: SafeArea(
   child: Padding(
     padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 50,),
     child: Padding(
       padding: const EdgeInsets.only(bottom: 30),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Expanded(
             child: Padding(
               padding: const EdgeInsets.only(bottom: 0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     height: 300,
                     decoration:
                     BoxDecoration(
                       color: MyColors.gaeycolor,
                     ),
                     child: Center(child: Text(result)),
                   ),
                   TextFormField(
                     controller: _Controller,
                     decoration: InputDecoration(
                       suffixIcon: IconButton(
                         onPressed: (){
                           _Controller.clear();
                         },
                         icon: Icon(
                             Icons.cancel_outlined,color: MyColors.darkgaeycolor,),
                       ),
                       hintText: 'Write any thing here',
                       border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                       borderSide: BorderSide(color: MyColors.redColor,),
                       ),
                       fillColor: MyColors.whitecolor,
                       contentPadding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),

                        filled: true,

                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       GestureDetector(
                         onTap:(){
                           setState(() {
                             result = "";
                           });
                         } ,
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8,),
                           decoration: BoxDecoration(
                             color: MyColors.bluecolor,
                          borderRadius: BorderRadius.circular(25),
                           ),
                           child: Text('Reset',style: TextStyle(color: MyColors.whitecolor,
                             fontSize: 15,fontWeight: FontWeight.w300,

                           ),
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap:(){
                           setState(() {
                             result = _Controller.text;
                           });
                         },
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8,),
                           decoration: BoxDecoration(
                             color: MyColors.bluecolor,
                             borderRadius: BorderRadius.circular(25),
                           ),
                           child: Text('Show',style: TextStyle(color: MyColors.whitecolor,
                             fontSize: 15,fontWeight: FontWeight.w300,

                           ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               GestureDetector(
                 onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return ScreenLogin();}
                   ));
                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal:15,vertical: 10,),
                   child: Text('Login Screen',style: TextStyle(
                     color: MyColors.whitecolor,
                   ),),
                   decoration:
                   BoxDecoration(
                     color: MyColors.bluecolor,
                     borderRadius: BorderRadius.circular(25),
                   ),
                 ),
               ),
               SizedBox(width: 30,),
               GestureDetector(
                 onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return LectureTwo();}
                   ));
                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal:15,vertical: 10,),
                   child: Text('LectureTwo',style: TextStyle(
                     color: MyColors.whitecolor,
                   ),),
                   decoration:
                   BoxDecoration(
                     color: MyColors.bluecolor,
                     borderRadius: BorderRadius.circular(25),
                   ),
                 ),
               ),

             ],
           ),
           SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               GestureDetector(
                 onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return LectureThree();}
                   ));
                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal:15,vertical: 10,),
                   child: Text('Lecture Three',style: TextStyle(
                     color: MyColors.whitecolor,
                   ),),
                   decoration:
                   BoxDecoration(
                     color: MyColors.bluecolor,
                     borderRadius: BorderRadius.circular(25),
                   ),
                 ),
               ),
               SizedBox(width: 30,),
               GestureDetector(
                 onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return LectureFour();}
                   ));
                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal:15,vertical: 10,),
                   child: Text('Lecture Four',style: TextStyle(
                     color: MyColors.whitecolor,
                   ),),
                   decoration:
                   BoxDecoration(
                     color: MyColors.bluecolor,
                     borderRadius: BorderRadius.circular(25),
                   ),
                 ),
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
