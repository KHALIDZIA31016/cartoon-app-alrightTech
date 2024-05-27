import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/Screen_12/screen_12.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/super_hero/super_hero.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../profile_screen/profile_screen.dart';

class GDMorningScreen extends StatefulWidget {
  const GDMorningScreen({super.key});

  @override
  State<GDMorningScreen> createState() => _GDMorningScreenState();
}

class _GDMorningScreenState extends State<GDMorningScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen12(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidgetInterBold(title: 'Good Morning!', fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.blackColor),
                Row(
                  children: [
                    TextWidgetInterRegular(title: 'Ash Fresco', fontSize: 10, fontWeight: FontWeight.w700 , color: AppColors.blue75),
                    10.wt,
                    Image.asset(AppConstants.coinIcon, width: 20, height: 20,),
                  ],
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                    },
                    child: Image.asset(AppConstants.girlImage, height: 71, width: 71,)),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: AppColors.blackColor.withOpacity(.57)), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.circle_outlined, color: AppColors.blackColor.withOpacity(.57)), label: 'circle'),
        BottomNavigationBarItem(icon: Icon(Icons.person, color: AppColors.blackColor.withOpacity(.57)),label: 'man',),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[
                Container(
                  height: 177, width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    gradient: LinearGradient(colors: [AppColors.blueF9, AppColors.blueD2]),
        
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextWidgetInterBold(title:'Learn to see,\n influence and\nthink systems', fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.whiteColor).leftAlignment(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Row(
                              children: [
                                Image.asset(AppConstants.char_1Image, height: 54,width: 38,),
                                Image.asset(AppConstants.deskImage, height: 37,width: 58,),
                                Image.asset(AppConstants.char_2Image, height: 49,width: 38,),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30, width: 286,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.blueFC
                        ),
                        child: Row(
                          children: [
                            10.wt,
                            Image.asset(AppConstants.searchGlass, height: 20, width: 20,),
                            8.wt,
                            Center(child: TextWidgetInterMedium(title: 'Search here', fontSize: 10, fontWeight: FontWeight.w700, color: AppColors.whiteColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(AppConstants.LEDImage, height: 155, width: 155,).all_Pdding(240, 0, 0, 0),
              ]
            ).all_Pdding(25, 0, 10, 0),
            Padding(
              padding: const EdgeInsets.only(top: 27, bottom: 19, left: 10),
              child: TextWidgetInterBold(title: 'What’s the plan today?', fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.blackColor),
            ),
            Row(children: [
              Stack(
                  alignment: Alignment(1.30, 2.31),
                children:[
                  Container(
                  height: 132, width: 185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
                    gradient: LinearGradient(colors: [AppColors.blueFA, AppColors.purpleFE]),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(backgroundColor: AppColors.blue74.withOpacity(.48)).leftAlignment(),
                      TextWidgetInterBold(
                          title: 'Study Time', fontSize: 15, fontWeight: FontWeight.w400  ,
                          color: AppColors.whiteColor, shadow: Shadow(blurRadius: 4,offset: Offset(0, 4), color: AppColors.blackColor.withOpacity(.25))),
                      CircleAvatar(radius: 30,backgroundColor: AppColors.blue74.withOpacity(.48)).RB_Alignment().all_Pdding(0, 5, 10, 0),
                    ],
                  ),
                ),
                  Image.asset(AppConstants.bookIcon, height: 77, width: 87,)
                ]
              ),
              13.wt,
              Stack(
                alignment: Alignment(1.30, 1.41),
                children: [
                  Container(
                    height: 132, width: 185,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(colors: [AppColors.pink7F, AppColors.pinkB7]),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundColor: AppColors.pink84.withOpacity(.50)).leftAlignment(),
                        TextWidgetInterBold(
                            title: 'Finding terms', fontSize: 15, fontWeight: FontWeight.w400  ,
                            color: AppColors.whiteColor, shadow: Shadow(blurRadius: 4,offset: Offset(0, 4), color: AppColors.blackColor.withOpacity(.25))),
                        CircleAvatar(radius: 30,backgroundColor: AppColors.pink84.withOpacity(.5)).RB_Alignment().all_Pdding(0, 5, 10, 0)
                      ],
                    ),
                  ),
                  Image.asset(AppConstants.textABC, height: 51, width: 87,)
                ]
              )
            ],),
            Padding(
              padding: const EdgeInsets.only(top: 27, bottom: 19, left: 10),
              child: TextWidgetInterBold(title: 'Recommended', fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.blackColor),
            ),
        
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 82, width: 356,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.whiteColor,
                        boxShadow: [BoxShadow(
                            offset: Offset(0, 44),
                            blurRadius: 50,
                            color: AppColors.blackColor.withOpacity(.25)
                        )]
                    ),
                  ),
                ),
                Container(
                  height: 93, width: 93,
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.fromBorderSide( BorderSide(color: Colors.blue, width: 5)),
                    image: DecorationImage(image: AssetImage(AppConstants.stackBooks),  scale: 4.5),
                    shape: BoxShape.circle
                  ),
                ).leftAlignment(),
                Container(
                  height: 32, width: 93,
                  decoration: const BoxDecoration(
                    color: AppColors.brown55,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        
                  ),
                  child: Center(child: TextWidgetInterBold(title: 'FREE', fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.whiteColor)),
                ).rightAlignment(),
                TextWidgetInterBold(title: 'Everyday Thinking in\nSystems', fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.blue8A).all_Pdding(97, 0, 10, 0),
                TextWidgetInterBold(title: 'An amazing story about systems', fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue75).all_Pdding(97, 0, 55, 0),
              ]
            ).all_Pdding(25, 25, 0, 0),
            40.ht,
            Stack(
                children: [
                  Center(
                    child: Container(
                      height: 82, width: 356,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.whiteColor,
                          boxShadow: [BoxShadow(
                              offset: Offset(0, 44),
                              blurRadius: 50,
                              color: AppColors.blackColor.withOpacity(.25)
                          )]
                      ),
                    ),
                  ),
                  Container(
                    height: 93, width: 93,
                    decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        border: Border.fromBorderSide( BorderSide(color: Colors.blue, width: 5)),
                        image: DecorationImage(image: AssetImage(AppConstants.joyStick_Icon),  scale: 4.5),
                        shape: BoxShape.circle
                    ),
                  ).leftAlignment(),
                  Container(
                    height: 32, width: 93,
                    decoration: const BoxDecoration(
                      color:AppColors.blueBFF,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        
                    ),
                    child: Center(child: TextWidgetInterBold(title: 'PRO', fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.whiteColor)),
                  ).rightAlignment(),
                  TextWidgetInterBold(title: 'Mazy Maze', fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.blue8A).all_Pdding(97, 0, 10, 0),
                  TextWidgetInterBold(title: 'An amazing story about systems', fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue75).all_Pdding(97, 0, 50, 0),
                ]
            ).all_Pdding(25, 25, 0, 0),
            50.ht
          ],
        ),
      ),
    );
  }
}


//
// extension Xtransform on num {
//   Transform get Xtrans => Transform.rotate(angle: -200);
// }
// extension Ytransform on num {
//   Transform get Ytrans => Transform.rotate(angle: -200);
// }