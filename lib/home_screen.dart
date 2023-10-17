import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyColors.gaeycolor,
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/firstScreen');
            },
            child: Text('First Screen'),
          ),
        ),




 );
}
}










