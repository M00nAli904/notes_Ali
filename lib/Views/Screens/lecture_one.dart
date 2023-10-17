import 'package:flutter/material.dart';
class LectureOne extends StatelessWidget {
  const LectureOne({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.yellow,
        body: Center(
          child: Container(

            width:400,
            height:600,
          color: Colors.purple,
            child:  Center(
          child: Container(
          height: 500,
            width: 300,
            color: Colors.white,
            child: Center(
              child: Container(
                height: 400,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.green,
                    child: Center(
                      child: Container(
                      height:130,
                      width: 130,
                      color: Colors.white,
                      child: Image.asset(

                        fit: BoxFit.fill,
                          'assets/images/box7.jpg'),

                  ),
                ),
              ),
            ),
          ),
            ),
            ),
            ),



        ),
        ),
    );
  }
}


/*
 body: Center(

        child:  Container(

          height: 300,
          width: 300,
          color: const Color(0xffba68c8),
          child: const  Center(
            child: Text('wow', style: TextStyle(
              fontFamily: 'Kenia'
            ),),
          ),

        ),
      ),
*/







