import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_delivery/constante/image_string.dart';

import '../../constante/color_extention.dart';
import '../common_widget/Rounded_buttonWith_Icon.dart';
import '../home/home_screen.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {

  TextEditingController textSearch=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menu",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HommeScreen()));
                      },
                      icon: Image.asset(
                        "assets/image/shopping_cart.png",
                        width: 25.w,
                        height: 25.h,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: "Search Food",
                  controller: textSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30.w,
                    child: Image.asset(
                      "assets/image/search.png",
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
             ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                     itemCount: 4,
                    itemBuilder: (context,index){
                       return Container(
                         margin: const EdgeInsets.symmetric(vertical: 8),
                         child: Stack(
                           alignment: Alignment.bottomLeft,
                           children: [
                             Image.asset(dess_1,height: 230.h,width: double.maxFinite,fit: BoxFit.cover,),
                             Container(
                               height: 230.h,
                                 width: double.maxFinite,
                               decoration: const BoxDecoration(

                                   gradient: LinearGradient(colors: [
                                     Colors.transparent,
                                     Colors.transparent,
                                     Colors.black
                                   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                               ),
                             ),
                            Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [

                                 Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 20),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("French Apple Pie" ,textAlign: TextAlign.center , style:
                                       TextStyle(
                                         fontSize: 25,
                                         fontWeight: FontWeight.w800,
                                         color: Colors.white,
                                       ),
                                       ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: TColor.primary,size: 20,),
                                          SizedBox(width:2,),
                                          Text("4.6",style: TextStyle(color:TColor.primary),),
                                          SizedBox(width:5,),
                                          Text("French Apple Pie" ,textAlign: TextAlign.center , style:
                                          TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                          ),
                                          Text(
                                            " . ",
                                            textAlign: TextAlign.center,
                                            style:
                                            TextStyle(color: TColor.primary, fontSize: 11),
                                          ),
                                          SizedBox(width:10,),
                                          Text("Desserts" ,textAlign: TextAlign.center , style:
                                          TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                          ),

                                        ],
                                      ),
                                       SizedBox(height: 20,)
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       );
                    }
                ),

            ],

          ),
        ),
      ),
    );
  }
}
