import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    ),
      backgroundColor: MyColors.yellow,

        body: Center(
        child: ElevatedButton(
        onPressed: (){
      Navigator.pushNamed(context, '/secondScreen');
    },
    child: Text('SecondScreen'),
    ),
        )
    );
  }
}