import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constante/color_extention.dart';
import '../common_widget/rounded_button.dart';
import '../common_widget/rounded_textfield.dart';

class NewpasswordScreen extends StatefulWidget {
  const NewpasswordScreen({super.key});

  @override
  State<NewpasswordScreen> createState() => _NewpasswordScreenState();
}

class _NewpasswordScreenState extends State<NewpasswordScreen> {
  TextEditingController txtNewPassword= TextEditingController();
  TextEditingController txtConfirmNewPassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height*0.1,),
              const Text("New Password",style: TextStyle(
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
              Rounded_TextField(controller: txtNewPassword, title: "New password",obscureText: true,),
              const SizedBox(height: 38,),
              Rounded_TextField(controller: txtConfirmNewPassword, title: "Confirm password",obscureText: true,),



              //*********************************bouton avec icons facebook et googl***************************************
              const SizedBox(height: 35,),
              round_button(title: "Next", onPressed: (){}),
              //***********************************************************************

              //*********************************have an account?***************************************

            ],
          ),
        ),
      ),
    );
  }
}
