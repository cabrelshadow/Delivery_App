import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_delivery/constante/color_extention.dart';
import 'package:meal_delivery/constante/image_string.dart';

import '../common_widget/rounded_textfield.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:media.height *0.09 ,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(

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
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Delivering to",textAlign: TextAlign.start,style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 13
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(

                  children: [
                    Text("Current Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: TColor.secondaryText),),
                    SizedBox(width: 40,),
                    Image.asset(dropdown,width: 16,height: 16,)
                  ],
                ),
              ),
              SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Container(
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
             ),
              SizedBox(height: 20,),
              SizedBox(height: 210,

               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   padding: EdgeInsets.symmetric(horizontal: 15),

                 itemBuilder: (context,index){
                     return Container(
                       margin: EdgeInsets.symmetric(horizontal: 8),
                       child: Column(
                         children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(item_1,fit: BoxFit.cover,height: 120,width: 120,),
                          ),
                           SizedBox(height: 10,),
                           Text("Offers",style: TextStyle(fontWeight: FontWeight.w600),)
                         ],
                       ),
                     );

                 }

               )
              ),
            ],
          ),
        ),
    );
  }
}
