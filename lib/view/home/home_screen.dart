import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_delivery/constante/color_extention.dart';
import 'package:meal_delivery/constante/dataListViewHome.dart';
import 'package:meal_delivery/constante/image_string.dart';

import '../../constante/popular_restaurent_data.dart';
import '../common_widget/Poular_restaurentCard.dart';
import '../common_widget/rounded_textfield.dart';
import '../common_widget/search_bar.dart';
import '../common_widget/topTile_icons.dart';
import '../common_widget/view_all_title.dart';

class HommeScreen extends StatefulWidget {
  const HommeScreen({super.key});

  @override
  State<HommeScreen> createState() => _HommeScreenState();
}

class _HommeScreenState extends State<HommeScreen> {
  TextEditingController txtSearch=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 19.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:15.h,),
               Toptile_icon(title: "Good morning Akila!",),

                  SizedBox(height: 20.h,),
                Text("Delivering to",textAlign: TextAlign.start,style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 13.sp
                    ),),

               Row(

                      children: [
                        Text("Current Locations",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: TColor.secondaryText),),
                        SizedBox(width: 40.w,),
                        Image.asset(dropdown,width: 16,height: 16,)
                      ],
                    ),

                  SizedBox(height: 40.h,),
                  ///=========================== search bar=======================================//
                  SearchBar_widget(),
                  ///=========================== search bar=======================================//

                  SizedBox(height: 30.h,),
                  SizedBox(height: media.height*0.2.h,

                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                       itemCount: dataCart.length,
                     itemBuilder: (context,index){
                       var listViewItem=dataCart[index] as Map ? ?? {};
                         return Container(

                           margin: EdgeInsets.symmetric(horizontal: 8.w),
                           child: Column(
                             children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(listViewItem["image"].toString(),fit: BoxFit.cover,height: 120.h,width: 120.w,),
                              ),
                               SizedBox(height: 5.h,),
                               Text(
                                 listViewItem["description"].toString(),
                                 style: TextStyle(fontWeight: FontWeight.w600),)
                             ],
                           ),
                         );
                     }

                   )
                  ),
                  SizedBox(height: 30.h,),
                  //=======================title for popular restaurent================//
               const view_all_tile(title: "Popular Restaurents", linkTile: "View all",),
                  SizedBox(height:20.h,),
                  //======================================//

                  //=====================poular restaurent scrollView=================//
                  SizedBox(height: media.height*0.3.h,

                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:pupular_Restaurent.length,
                          itemBuilder: (context,index){
                            var pupularCard=pupular_Restaurent[index] as Map ? ?? {};

                            return Poular_restaurentCard(onTap: () {  }, dataRestaurent: pupularCard,);
                          }

                      )
                  ),


                  //=====================end=================//
                  //=======================Must popular title================//
                  const view_all_tile(title: "Must popular", linkTile: "View all",),
                  SizedBox(height: 20.h,),
                  //=====================end=================//
                  //=====================Must poular restaurent scrollView=================//
                  SizedBox(height: media.height*0.3,

                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:pupular_Restaurent.length,
                          itemBuilder: (context,index){
                            var pupularCard=pupular_Restaurent[index] as Map ? ?? {};

                            return Poular_restaurentCard(onTap: () {  }, dataRestaurent: pupularCard,);
                          }

                      )
                  ),

                  //=====================end=================//
                  SizedBox(height:10,),
                  //=========================recette item=====================//
                  const view_all_tile(title: "Recent item", linkTile: "View all",),
                  SizedBox(height:1,),

                  ListView.builder(
                    itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder:(context, index)
                      {

                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset(item_1,width:100 ,height: 100,fit: BoxFit.cover,),

                            ),
                            SizedBox(width: 25,),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Mulberry Pizza by Josh",style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 19,

                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text("Café",style: TextStyle( fontSize: 17.sp, color: TColor.placeholder,),),
                                      SizedBox( width: 14,),

                                      Text("Western Food",style: TextStyle( fontSize: 17.sp,color: TColor.placeholder,))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Icon(Icons.star,color: TColor.primary,size: 17.sp,),
                                      SizedBox( width: 8,),
                                      Text("4.5",style: TextStyle( fontSize: 17.sp,color: TColor.primary),),

                                      SizedBox( width: 14,),

                                      Text("(124 Ratings)",style: TextStyle( fontSize: 17.sp,color: TColor.placeholder,))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],

                        ),
                    );
                  })

                ],
              ),
            ),
          ),
      ),
    );
  }
}

