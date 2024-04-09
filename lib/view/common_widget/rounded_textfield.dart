import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constante/color_extention.dart';

class Rounded_TextField extends StatelessWidget {
  final String title;
  final TextEditingController ?controller;


  const Rounded_TextField({
    super.key,

    required this.title,
    required this.controller
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: TColor.textfield,borderRadius: BorderRadius.circular(20)),
      child: TextField(autocorrect: false,controller:controller,decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: title,
          hintStyle:TextStyle(
              color: TColor.placeholder,
              fontSize: 14,
              fontWeight: FontWeight.w500
          )

      ),),
    );
  }
}
