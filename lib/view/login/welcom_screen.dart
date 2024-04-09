import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/constante/image_string.dart';
import 'package:meal_delivery/view/login/login_screen.dart';

import '../../constante/color_extention.dart';
import '../common_widget/rounded_button.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({super.key});

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  @override
  Widget build(BuildContext context) {
    var media =MediaQuery.of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(welcome_top_shape,width: media.width,

                ),
                Image.asset(Applogo,
                  width: media.width * 0.50,
                  height:  media.width * 0.50,
                  fit: BoxFit.contain,
                )
              ],
            ),
            SizedBox(height: media.width*0.01,),
            Text("Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep",textAlign: TextAlign.center ,style:
            TextStyle(
                color: TColor.secondaryText,
                fontSize: 12,

            )
              ,),

            SizedBox(height: media.width*0.09,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: round_button( title: "Login",onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));

              },),
            ),
            SizedBox(height: media.width*0.04,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: round_button( title: "Create an Account",onPressed: (){}, type: round_buttonType.textPrimary,),
            )
          ],
        ),
      )
    );
  }
}

