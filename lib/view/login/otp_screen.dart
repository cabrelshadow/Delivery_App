import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/view/login/login_screen.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../constante/color_extention.dart';
import '../common_widget/rounded_button.dart';
import '../common_widget/rounded_textfield.dart';
import 'new_password_screen.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({super.key});

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
  var media =MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height*0.1,),
              const Text("We have sent an OPT to \nyour Mobile",textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800
              ),),

              const SizedBox(height: 2,),
              Center(
                child: Text("Please check your mobile number 071*****12 \n continue to reset your password ",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    color: TColor.primaryText
                ),),
              ),
              //====================Formualire OTP==============================///
              const SizedBox(height: 40,),


            SizedBox(height: 60,child :OtpPinField(
                key: _otpPinFieldController,
                autoFillEnable: false,

                ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                textInputAction: TextInputAction.done,

                ///in case you want to change the action of keyboard
                /// to clear the Otp pin Controller
                onSubmit: (text) {
                  print('Entered pin is $text');

                  /// return the entered pin
                },
                onChange: (text) {
                  print('Enter on change pin is $text');

                  /// return the entered pin
                },
                onCodeChanged: (code) {
                  print('onCodeChanged  is $code');
                },

                /// to decorate your Otp_Pin_Field
                otpPinFieldStyle: OtpPinFieldStyle(
                  textStyle: TextStyle(
                    color: TColor.white
                  ),
                  /// border color for inactive/unfocused Otp_Pin_Field
                  defaultFieldBorderColor: TColor.textfield,

                  /// border color for active/focused Otp_Pin_Field
                  activeFieldBorderColor: TColor.primary,

                  /// Background Color for inactive/unfocused Otp_Pin_Field
                  defaultFieldBackgroundColor: TColor.textfield,

                  /// Background Color for active/focused Otp_Pin_Field
                  activeFieldBackgroundColor: TColor.textfield,

                  /// Background Color for filled field pin box
                  filledFieldBackgroundColor: TColor.primary,

                  /// border Color for filled field pin box
                  filledFieldBorderColor: TColor.primary,

                ),
                maxLength: 4,

                /// no of pin field
                showCursor: true,

                /// bool to show cursor in pin field or not
                cursorColor: TColor.primary,

                /// to choose cursor color


                showCustomKeyboard: false,

                ///bool which manage to show custom keyboard
                // customKeyboard: Container(),
                /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                showDefaultKeyboard: true,

                ///bool which manage to show default OS keyboard
                cursorWidth: 3,

                /// to select cursor width
                mainAxisAlignment: MainAxisAlignment.center,

                /// place otp pin field according to yourself


otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration
            ),
           ),

              //*********************************bouton avec icons facebook et googl***************************************
           SizedBox(height: 40,),
              round_button(title: "Send", onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>NewpasswordScreen()));}),
              //***********************************************************************

              //*********************************have an account?***************************************
              Padding(
                padding:  EdgeInsets.only(top: media.height*0.03,right: 70,left: 70),
                child: Center(
                  child: Row(

                    children: [
                      Text("Didn't Receive?",textAlign: TextAlign.center),
                      SizedBox(width: 2,),
                      InkWell(
                        onTap: (){    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));},

                        child: Text("Clik Here",textAlign: TextAlign.center,style:TextStyle(
                            color: TColor.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
