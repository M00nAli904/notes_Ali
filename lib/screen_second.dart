import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class ScreenSecond extends StatelessWidget {
  const ScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    ),
      backgroundColor: Colors.greenAccent,

        body: Center(
        child: ElevatedButton(
        onPressed: (){
      Navigator.pushNamed(context, '/secondScreen');
    },
    child: Text('Third Screen'),
    ),
        )
    );
  }
}