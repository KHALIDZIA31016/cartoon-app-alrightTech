import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Utils/my_size/my_size.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/loading_Screen/laoding_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: Color(0XFFDFEDFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          50.ht,
         Expanded(
           child: Column(
             children: [
               Center(
                 child: TextWidgetInterMedium(
                     align: TextAlign.center,
                     title: 'Select your avatar',
                     fontSize: 30, fontWeight: FontWeight.w400,color: AppColors.blackColor),
               ),
               70.ht,
           
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/Images/boy_hair.png', height: 145, width: 145,),
                   15.wt,
                   Image.asset('assets/Images/boy_happy.png', height: 145, width: 145,),
                 ],
               ),
               35.ht,
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/Images/boy_glasses.png', height: 145, width: 145,),
                   15.wt,
                   Image.asset('assets/Images/girl.png', height: 145, width: 145,),
                 ],
               ),
             ],
           ),
         ),
          140.ht,
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen()));
            },
            child: Container(
              height: MySize.scaleFactorHeight * 51,
              width: MySize.scaleFactorWidth * 223,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.blueBFF,
              ),
              child: Center(child: TextWidgetInterMedium(title: 'Continue', fontSize: 20, fontWeight: FontWeight.w500  , color: AppColors.whiteColor)),
            )
          ),
          60.ht,
        ],
      ),
    );
  }
}
