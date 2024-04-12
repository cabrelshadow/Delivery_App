import 'package:flutter/cupertino.dart';

import '../../constante/color_extention.dart';

class view_all_tile extends StatelessWidget {
  final String title;
  final String linkTile;
  const view_all_tile({
    super.key,
    required this.title,
    required this.linkTile
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),),
        Text(linkTile,style: TextStyle(
          color: TColor.primary,
        ),)
      ],
    );
  }
}
