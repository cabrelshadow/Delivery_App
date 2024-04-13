import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constante/color_extention.dart';

class Poular_restaurentCard extends StatelessWidget {
  final VoidCallback onTap;
  final Map dataRestaurent;
  const Poular_restaurentCard({
    super.key,
    required this.onTap,
    required this.dataRestaurent,

  });

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(dataRestaurent["image"].toString(),fit: BoxFit.cover,height: media.height*0.2.h,width: 300.w,),
          ),
          SizedBox(height: 10.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataRestaurent["Title"].toString(),
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17.sp),

              ),
              SizedBox(height: 4.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(dataRestaurent["subtitle"].toString()),
                  Text(dataRestaurent["subtitle2"].toString()),


                  Icon(Icons.star,color: TColor.primary,size: 12.sp,),

                  Text(dataRestaurent["grade"],style: TextStyle(color: TColor.primary,fontSize: 12.sp),),


                ],
              )
            ],

          ),

        ],
      ),
    );
  }
}