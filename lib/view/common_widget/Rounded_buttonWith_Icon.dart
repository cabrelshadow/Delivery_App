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
