import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/constante/color_extention.dart';
import 'package:meal_delivery/constante/image_string.dart';
import 'package:meal_delivery/view/common_widget/rounded_button.dart';

import '../common_widget/Rounded_buttonWith_Icon.dart';
import '../common_widget/rounded_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height*0.09,),
             const Text("Login",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800
                  ),),

              const SizedBox(height: 2,),
              Center(
                  child: Text("Add your details to login",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    color: TColor.primaryText
                  ),),
                ),
              //====================Formualire==============================///
              const SizedBox(height: 40,),
              Rounded_TextField(controller: txtEmail, title: "Your Email",),
              const SizedBox(height: 20,),
              Rounded_TextField(controller: txtPassword, title: "Your password",),
              const SizedBox(height: 38,),
              round_button(title: "login", onPressed: (){},type: round_buttonType.bgPrimary,),
              const SizedBox(height: 20,),
              Center(
                child: Text("Forgot your password?",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    color: TColor.secondaryText
                ),),
              ),
              const SizedBox(height: 40,),
              Center(
                child: Text("or Login With",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    color: TColor.secondaryText
                ),),
              ),
              //*********************************bouton avec icons facebook et googl***************************************
              const SizedBox(height: 40,),
              const Rouded_buttonWitthIcon(title: "Login with Facebook", image:facebook_logo,),
              const SizedBox(height: 30,),
              const Rouded_buttonWitthIcon(title: "Login with google", image:google_logo,type:rouded_buttonWithIcon.bgRed,),
              //***********************************************************************

              //*********************************have an account?***************************************
              Padding(
                padding:  EdgeInsets.only(top: media.height*0.03,right: 60,left: 60),
                child: Row(

                  children: [
                    Text("Don't have an Account?",textAlign: TextAlign.center),
                    SizedBox(width: 2,),
                    Text("Sign Up",textAlign: TextAlign.center,style:TextStyle(
                      color: TColor.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                    ),),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


