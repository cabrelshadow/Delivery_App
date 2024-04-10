


import 'package:flutter/material.dart';
import 'package:meal_delivery/view/login/welcom_screen.dart';

import '../../constante/image_string.dart';

class SlpaScreen extends StatefulWidget {
  const SlpaScreen({super.key});

  @override
  void initState(){
 //   super.initState();

  }
  void goWelcomePage()async{
    await Future.delayed(Duration(seconds: 7));
  }
  State<SlpaScreen> createState() => _SlpaScreenState();
}

class _SlpaScreenState extends State<SlpaScreen> {
  @override
  void initState(){
    super.initState();
    goWelcomePage();

  }
  void goWelcomePage()async{
    await Future.delayed(Duration(seconds: 1));
    welcompage();
  }
  void welcompage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomView()));
  }
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return   Scaffold(
      body: Stack(
        alignment: Alignment.center,
      children: [
        //===========background splascreen=================//
         Image.asset(splash_screen,
           width: media.width,
           height: media.height,
           fit: BoxFit.cover,
         ),
         //===========app logo=================//
         Image.asset(Applogo ,
           width: media.width*0.7,
           height: media.height*0.7,
           fit: BoxFit.contain,
         ),

      ],

      ),
    );
  }
}
