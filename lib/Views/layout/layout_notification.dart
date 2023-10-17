import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class LayoutNotification extends StatelessWidget {
  const LayoutNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.yellow,
      body: Center(
        child: Text('Layout Notification'),
      ),
    );
  }
}
