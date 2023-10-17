import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.whitecolor,
      appBar:AppBar(
        backgroundColor: MyColors.whitecolor,
        elevation: 0,
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
         icon:Icon(Icons.arrow_back_ios,color: MyColors.blackcolor,
         size: 18,
        ),
        ),
        // title: Text('My first App'),
        // centerTitle: true,
        // actions: [
        //   Icon(Icons.message,color: MyColors.blackcolor,
        //     size: 18,
        //
        //   ),
        //   SizedBox(
        //     width: 10,
        //   ),
        //   Icon(Icons.camera,color: MyColors.blackcolor,
        //     size: 18,
        //
        //   ),
        //   SizedBox(
        //     width: 10,
        //   ),
        //   Icon(Icons.bar_chart,color: MyColors.blackcolor,
        //     size: 18,
        //
        //   ),
        //   SizedBox(
        //     width: 10,
        //   ),
        //
        // ],



        ),
      body:
      Padding(
        padding:  EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(alignment:Alignment.centerLeft,
                    child: Text('Login',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/Kenia-Regular.ttf',
                        fontSize: 26,
                      ),

                    ),
                  ),
                  SizedBox(height: 25,),
                  Image.asset('assets/images/img_16.png'),
                  SizedBox(height: 25,),
                  Text('Welcome back',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/Kenia-Regular.ttf',
                      fontSize: 18,
                    ),
                  ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    //labelText: 'Email',
                    contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5,),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),


                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: MyColors.whitecolor,
                  ),

                ),
                  SizedBox(height: 25,),
                  TextFormField(
                    decoration: InputDecoration(

                      suffixIcon: Icon(Icons.visibility,color: MyColors.darkgaeycolor,),
                      hintText: 'Password',



                      contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),


                      ),
                      focusedBorder: OutlineInputBorder(),
                      filled: true,
                      fillColor: MyColors.whitecolor,
                    ),

                  ),
                  SizedBox(height: 25,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password',
                    style: TextStyle(fontFamily: 'assets/fonts/Parisienne-Regular.ttf',
                    fontSize: 12,
                    ),
                    ),
                  ),
               SizedBox(height: 25,),
               Container(
                   padding: EdgeInsets.symmetric(horizontal: 120,vertical: 15,),
                 decoration:
                 BoxDecoration(
                   color: MyColors.yellow,
                       borderRadius: BorderRadius.circular(30),
                 ),
                 child: Text('Login',style: TextStyle(
                   color: MyColors.whitecolor,fontSize: 25,fontFamily: 'assets/fonts/Kenia-Regular.ttf',
                 ), ) ,
               ),
               SizedBox(height: 30,),
               Row(
                 children: [
                   Expanded(
                     child: Divider(
                       indent: 50,
                       endIndent: 15,
                       color: MyColors.blackcolor,
                     ),
                   ),
                   Text('OR'),
                   SizedBox(height: 25,),
                   Expanded(
                     child: Divider(
                       indent: 15,
                       endIndent: 50,
                       color: MyColors.blackcolor,
                     ),
                   ),

                 ],
               ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
                        decoration:
                        BoxDecoration(
                          color: MyColors.yellow,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/image.jpeg", height: 25,width: 25,

                            ),
                            SizedBox(width: 5,),
                            Text('Login',style: TextStyle(
                              color: MyColors.whitecolor,fontSize: 25,fontFamily: 'assets/fonts/Kenia-Regular.ttf',
                            ), ),
                          ],
                        ) ,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
                        decoration:
                        BoxDecoration(
                          color: MyColors.yellow,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:
                        Row(
                          children: [
                            Image.asset("assets/images/google G.png",height: 20, width: 25,),
                            SizedBox(width: 5,),
                            Text('Login',style: TextStyle(
                              color: MyColors.whitecolor,fontSize: 25,fontFamily: 'assets/fonts/Kenia-Regular.ttf',
                            ), ),
                          ],
                        ) ,
                      ),
                    ],

                  ),




                ],
              ),
            ),
            IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Do not have an account',style: TextStyle(
                      color: MyColors.darkgaeycolor,
                    ),
                    ),
                    VerticalDivider(
                      color: MyColors.blackcolor,
                    ),
                    Text('Signup',style: TextStyle
                      (color: MyColors.bluecolor,fontFamily:'assets/fonts/Parisienne-Regular.ttf',
                        fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),



    );





  }
}
//segoe UI
//poppins-Light.ttf
//poppins-semiblod.ttf