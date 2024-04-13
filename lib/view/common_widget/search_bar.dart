import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constante/color_extention.dart';

class SearchBar_widget extends StatelessWidget {
  const SearchBar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: TColor.textfield,borderRadius: BorderRadius.circular(28.r)
      ),
      child:  Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Icon(Icons.search,color: TColor.placeholder,size: 36,),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle:TextStyle(
                    color: TColor.placeholder,
                    fontSize: 20.sp,

                  )
              ),

            ),
          ),
        ],
      ),

    );
  }
}



