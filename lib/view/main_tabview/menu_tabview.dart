import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/constante/color_extention.dart';
import 'package:meal_delivery/constante/image_string.dart';
import 'package:meal_delivery/view/home/home_screen.dart';
import 'package:meal_delivery/view/profile/profileScreen.dart';

import '../common_widget/tabButton.dart';

class MenuTabview extends StatefulWidget {
  const MenuTabview({super.key});

  @override
  State<MenuTabview> createState() => _MenuTabviewState();
}

class _MenuTabviewState extends State<MenuTabview> {
  int  selctTab=2;
  PageStorageBucket storageBucket=PageStorageBucket();
  Widget selectPageView=HommeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageStorage(bucket: storageBucket, child: selectPageView),
    backgroundColor: const Color(0xfff5f5f5),
    floatingActionButtonLocation:
    FloatingActionButtonLocation.miniCenterDocked,
    floatingActionButton: SizedBox(
      width: 60,
      height: 60,
      child: FloatingActionButton(
        onPressed: () {
          if (selctTab != 2) {
            selctTab = 2;
            selectPageView = const HommeScreen();
          }
          if (mounted) {
            setState(() {});
          }
        },
        shape: const CircleBorder(),
        backgroundColor: selctTab == 2 ? TColor.primary : TColor.placeholder,
        child: Image.asset(
         tap_home,
          width: 30,
          height: 30,
        ),
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      surfaceTintColor: TColor.white,
      shadowColor: Colors.black,
      elevation: 1,
      notchMargin: 12,
      height: 64,
      shape: const CircularNotchedRectangle(),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
                title: "Menu",
                icon: tap_menu,
                onTap: () {
                  if (selctTab != 0) {
                    selctTab = 0;
                    selectPageView = const ProfileScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 0),
            TabButton(
                title: "Offer",
                icon: tap_offer,
                onTap: () {
                  if (selctTab != 1) {
                    selctTab = 1;
                    selectPageView = const HommeScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 1),


            const  SizedBox(width: 40, height: 40, ),

            TabButton(
                title: "Profile",
                icon: tap_profile,
                onTap: () {
                  if (selctTab != 3) {
                    selctTab = 3;
                    selectPageView = const HommeScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 3),
            TabButton(
                title: "More",
                icon: tab_more,
                onTap: () {
                  if (selctTab != 4) {
                    selctTab = 4;
                    selectPageView = const  HommeScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 4),
          ],
        ),
      ),
    ),
    );;
  }
}
