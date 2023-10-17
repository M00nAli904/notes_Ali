import 'package:flutter/material.dart';
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/navigationfirst');
          },
          child: Text('navigation'),
        ),


    );
  }
}
