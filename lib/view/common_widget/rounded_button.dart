import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constante/color_extention.dart';
//enumeration pour le choix de couleur sur les boutons
enum round_buttonType{
  bgPrimary,textPrimary
}

class round_button extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final round_buttonType type;

  const round_button({
    super.key,
    required this.title,
    required this.onPressed,
     this.type=round_buttonType.bgPrimary
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: onPressed,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: type==round_buttonType.bgPrimary?TColor.primary:TColor.white,//manipulation des enumeration ici
            borderRadius: BorderRadius.circular(28),
            border:  type==round_buttonType.bgPrimary? null :Border.all(color: TColor.primary,width: 1),//manipulation des enumeration ici

        ),
        child: Center(
          child:  Text(title ,style:
          TextStyle(
              color: type==round_buttonType.bgPrimary?TColor.white:TColor.primary,//manipulation des enumeration ici
              fontSize: 16,
              fontWeight: FontWeight.w600
          )
            ,),
        ),
      ),
    );
  }
}
