import 'package:flutter/material.dart';
import 'package:untitled4/Views/Screens/expanded_flutter.dart';
import 'package:untitled4/Views/Screens/navigation.dart';
import 'package:untitled4/Views/Screens/screen_login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeAnimationDuration: Duration(milliseconds: 300),
      debugShowCheckedModeBanner: false,
      home:Navigation(),
      // routes: {
      //   '/firstScreen': (context)=>ScreenFirst(),
      //   '/secondScreen': (context)=>ScreenSecond(),
      // },

    );
  }
}





