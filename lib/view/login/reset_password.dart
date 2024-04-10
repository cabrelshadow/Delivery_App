import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/view/login/new_password_screen.dart';
import 'package:meal_delivery/view/login/otp_screen.dart';

import '../../constante/color_extention.dart';
import '../common_widget/rounded_button.dart';
import '../common_widget/rounded_textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController txtEmail=TextEditingController();
  @override
  Widget build(BuildContext context){
var media=MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height*0.1,),
              const Text("Reset Password",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800
              ),),

              const SizedBox(height: 2,),
              Center(
                child: Text("Please enter your email to receive a \nlink to create a  new password via email ",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    color: TColor.primaryText
                ),),
              ),
              //====================Formualire==============================///
              const SizedBox(height: 40,),
              Rounded_TextField(controller: txtEmail, title: "email",),



              //*********************************bouton avec icons facebook et googl***************************************
              const SizedBox(height: 40,),
              round_button(title: "Send", onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>OptScreen()));}),
              //***********************************************************************

              //*********************************have an account?***************************************

            ],
          ),
        ),
      ),
    );
  }
}
