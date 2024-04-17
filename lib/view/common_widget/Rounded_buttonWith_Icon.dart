import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constante/color_extention.dart';
import '../../constante/image_string.dart';
enum rouded_buttonWithIcon{
  bgRed,BgBleu
}
class Rouded_buttonWitthIcon extends StatelessWidget {
  final String title;
  final String image;
  final rouded_buttonWithIcon type;
  final VoidCallback onPressed;

  const Rouded_buttonWitthIcon({
    super.key,
    required this.title,
    required this.image,
     this.type=rouded_buttonWithIcon.BgBleu,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(

        height: 56,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 28),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color:  type==rouded_buttonWithIcon.BgBleu?TColor.blue:TColor.red
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image,),
            Text(title,style: TextStyle(fontSize: 13,color: TColor.white),)
          ],
        ),
      ),
    );
  }
}
class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTextfield(
      {super.key,
        required this.hintText,
        this.controller,
        this.keyboardType,
        this.bgColor,
        this.left,
        this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor ?? TColor.textfield,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: left!,
            ),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                    color: TColor.placeholder,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundTitleTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTitleTextfield(
      {super.key,
        required this.title,
        required this.hintText,
        this.controller,
        this.keyboardType,
        this.bgColor,
        this.left,
        this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: bgColor ?? TColor.textfield,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: left!,
            ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 8,),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    autocorrect: false,
                    controller: controller,
                    obscureText: obscureText,
                    keyboardType: keyboardType,
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(color: TColor.placeholder, fontSize: 11),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}