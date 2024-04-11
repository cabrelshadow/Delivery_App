import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/constante/color_extention.dart';
import 'package:meal_delivery/constante/image_string.dart';
import 'package:meal_delivery/view/common_widget/rounded_button.dart';
import 'package:meal_delivery/view/main_tabview/menu_tabview.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int selectPage=0;
  PageController controller=PageController();
  List  PageArr=[
    {
    "title":"Find Food You Love",
    "subtitle":"Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep",
    "image":Onboardin_1
  },
    {
      "title":"Fast Delivery",
      "subtitle":"Fast food delivery to your home, office \n wherever you are",
      "image":Onboardin_2
    },
    {
      "title":"Live Tracking",
      "subtitle":"Real time tracking of your food on the app\n once you placed the order",
      "image":Onboardin_3
    }
  ];
  @override
  void initState() {

    super.initState();
    controller.addListener(() {
      setState(() {
        selectPage=controller.page?.floor()?? 0;
    });});

  }
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ///==========================swip view of onboardin Screen=======================//
          PageView.builder(
            controller: controller,
              itemCount: PageArr.length,
                itemBuilder: ((context,index){
                  var pObj=PageArr[index] as Map ? ?? {};
                  return Column(

                    children: [
                      SizedBox(height: media.height *0.09,),
                      Container(
                        width: media.width,
                        height: media.width,
                        alignment: Alignment.center,
                        child: Image.asset(pObj["image"].toString(),
                        width: media.width * 0.7,fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: media.width*0.10,),
                      Text(pObj["title"].toString(),style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: TColor.primaryText

                      ),),
                      SizedBox(height: media.width*0.07,),
                      Text(pObj["subtitle"].toString(),
                        textAlign:TextAlign.center,
                        style: TextStyle(
                        fontSize: 17,
                       color: TColor.secondaryText

                      ),),
                    ],
                  );
                 })),
                 SizedBox( height: media.width *0.06),
                 Column(

                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(height: media.width * 0.6,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: PageArr.map((e) {
                          var index=PageArr.indexOf(e);
                          return Container(

                            margin: EdgeInsets.symmetric(horizontal: 4),
                            height: 8,
                           width: 8,
                           decoration:  BoxDecoration(
                             color: index==selectPage?TColor.primary:TColor.placeholder,
                             borderRadius: BorderRadius.circular(4)
                           ),
                          );
                        }).toList(),
                      ),
                     Spacer(),
                     SizedBox(height: media.height * 0.2),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25 ,vertical: 20),
                       child: round_button(title: "Next", onPressed: (){
                         if(selectPage>=2){
                           //go to home page
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuTabview()));
                         }else{
                           // go next screen
                           setState(() {
                             selectPage=selectPage+1;
                             controller.animateToPage(selectPage , duration: Duration(milliseconds: 500), curve:Curves.slowMiddle);
                           });
                         }

                       }),
                     ),

                   ],
                 )
        ],
      ),
    );
  }
}
