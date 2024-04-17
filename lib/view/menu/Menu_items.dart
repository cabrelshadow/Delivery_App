import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_delivery/view/profile/profileScreen.dart';

import '../../constante/color_extention.dart';
import '../common_widget/Rounded_buttonWith_Icon.dart';
import '../home/home_screen.dart';
import 'menu_list.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/image/menu_1.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/image/menu_2.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/image/menu_3.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/image/menu_4.png",
      "items_count": "25",
    },
  ];
  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 180),
            width: media.width * 0.27.w,
            height: media.height * 0.6.h,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                   SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTextfield(
                      hintText: "Search Food",
                      controller: txtSearch,
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
                SizedBox(
                    height: 30.h,
                  ),
                  ListView.builder(
                      padding:  EdgeInsets.symmetric(
                          vertical: 30.w, horizontal: 20.h),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuArr.length,
                      itemBuilder: ((context, index) {
                        var mObj = menuArr[index] as Map? ?? {};
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>MenuList(

                                ),
                              ),
                            );
                          },
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 8, bottom: 8, right: 20),
                                width: media.width - 100.w,
                                height: 90,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 7,
                                          offset: Offset(0, 4))
                                    ]),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    mObj["image"].toString(),
                                    width: 80.w,
                                    height: 80.h,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mObj["name"].toString(),
                                          style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "${mObj["items_count"].toString()} items",
                                          style: TextStyle(
                                              color: TColor.secondaryText,
                                              fontSize: 11.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(17.5),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 4,
                                              offset: Offset(0, 2))
                                        ]),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "assets/image/btn_next.png",
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}