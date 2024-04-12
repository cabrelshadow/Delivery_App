import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/constante/color_extention.dart';
import 'package:meal_delivery/constante/dataListViewHome.dart';
import 'package:meal_delivery/constante/image_string.dart';

import '../../constante/popular_restaurent_data.dart';
import '../common_widget/Poular_restaurentCard.dart';
import '../common_widget/rounded_textfield.dart';
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
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:media.height *0.09 ,),
             Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Good morning Akila!" ,style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: TColor.primaryText

                      ),),
                      Image.asset(shopping_cart,width: 30,height: 30,)
                    ],
                  ),

                SizedBox(height: 20,),
              Text("Delivering to",textAlign: TextAlign.start,style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 13
                  ),),

             Row(

                    children: [
                      Text("Current Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: TColor.secondaryText),),
                      SizedBox(width: 40,),
                      Image.asset(dropdown,width: 16,height: 16,)
                    ],
                  ),

                SizedBox(height: 40,),

           Container(
                      height: 60,
                   decoration: BoxDecoration(
                       color: TColor.textfield,borderRadius: BorderRadius.circular(28)
                   ),
                   child:  Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.only(left: 30),
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
                                   fontSize: 20,

                               )
                           ),

                         ),
                       ),
                     ],
                   ),

                 ),

                SizedBox(height: 30,),
                //======================cart items withe one title center================//
                SizedBox(height: media.width *0.4,

                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount: dataCart.length,
                   itemBuilder: (context,index){
                     var listViewItem=dataCart[index] as Map ? ?? {};
                       return Container(
                         margin: EdgeInsets.symmetric(horizontal: 8),
                         child: Column(
                           children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(listViewItem["image"].toString(),fit: BoxFit.cover,height: 120,width: 120,),
                            ),
                             SizedBox(height: 10,),
                             Text(
                               listViewItem["description"].toString(),
                               style: TextStyle(fontWeight: FontWeight.w600),)
                           ],
                         ),
                       );
                   }

                 )
                ),
                SizedBox(height: 20,),
                //=======================title for popular restaurent================//
             const view_all_tile(title: "Popular Restaurents", linkTile: "View all",),
                SizedBox(height:30,),
                //======================================//

                //=====================poular restaurent scrollView=================//
                SizedBox(height: media.height *0.3,

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
                SizedBox(height:30,),
                const view_all_tile(title: "Must popular", linkTile: "View all",),
                SizedBox(height: 30,),
                //=====================end=================//
                //=====================Must poular restaurent scrollView=================//
                SizedBox(height: media.height *0.3,

                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:pupular_Restaurent.length,
                        itemBuilder: (context,index){
                          var pupularCard=pupular_Restaurent[index] as Map ? ?? {};

                          return Poular_restaurentCard(onTap: () {  }, dataRestaurent: pupularCard,);
                        }

                    )
                ),
                SizedBox(height: 20,),
                //=====================end=================//

                //=========================recette item=====================//
                const view_all_tile(title: "Recent item", linkTile: "View all",),
                ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:2,
                    itemBuilder: (context,index){
                 //     var pupularCard=pupular_Restaurent[index] as Map ? ?? {};

                      return Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(item_1,fit: BoxFit.cover,width: 70, height: 70,),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Mulberry Pizza by Josh",style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,

                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }

                )



              ],
            ),
          ),
        ),
    );
  }
}



