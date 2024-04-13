import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constante/color_extention.dart';
import '../../constante/image_string.dart';

class Toptile_icon extends StatelessWidget {
  final String title;
  const Toptile_icon({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ,style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w800,
            color: TColor.primaryText

        ),),
        Image.asset(shopping_cart,width: 30,height: 30,)
      ],
    );
  }
}



