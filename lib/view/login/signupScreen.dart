import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/view/login/login_screen.dart';

import '../../constante/color_extention.dart';
import '../common_widget/rounded_button.dart';
import '../common_widget/rounded_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtName=TextEditingController();
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtMobile=TextEditingController();
  TextEditingController txtAdress=TextEditingController();
  TextEditingController txtPassword=TextEditingController();
  TextEditingController txtConfirmPassword=TextEditingController();
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
              SizedBox(height: media.height*0.1,),
              const Text("Sign Up",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800
              ),),

              const SizedBox(height: 2,),
              Center(
                child: Text("Add your details to sign up",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    color: TColor.primaryText
                ),),
              ),
              //====================Formualire==============================///
              const SizedBox(height: 40,),
              Rounded_TextField(controller: txtName, title: "Name",),
              const SizedBox(height: 38,),
              Rounded_TextField(controller: txtEmail, title: "Email",),
              const SizedBox(height: 38,),
              Rounded_TextField(controller: txtMobile, title: "Mobile", KeyboardType: TextInputType.phone,),
              const SizedBox(height: 38,),
              Rounded_TextField(controller: txtAdress, title: "password",obscureText: true,),
              const SizedBox(height: 38,),
              Rounded_TextField(controller: txtPassword, title: "Your password",),
              const SizedBox(height: 38,),
              Rounded_TextField(controller: txtConfirmPassword, title: "confirm password",),



              //*********************************bouton avec icons facebook et googl***************************************
              const SizedBox(height: 40,),
                round_button(title: "Sign Up", onPressed: (){}),
              //***********************************************************************

              //*********************************have an account?***************************************
              Padding(
                padding:  EdgeInsets.only(top: media.height*0.03,right: 60,left: 60),
                child: Row(

                  children: [
                    Text("Already have an Account?",textAlign: TextAlign.center),
                    SizedBox(width: 2,),
                    InkWell(
                      onTap: (){    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));},

                      child: Text("Login",textAlign: TextAlign.center,style:TextStyle(
                          color: TColor.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                    ),

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
