import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Utils/my_size/my_size.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: Color(0XFFDFEDFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          260.ht,
        Flexible(
          child: Column(
            children: [
              Image.asset('assets/Images/car_chids.png', height: 195, width: 275,),
              44.ht,
              Center(
                child: TextWidgetInterMedium(
                    align: TextAlign.center,
                    title: 'The best way to learn tech is here\n Click here to sign up now.',
                    fontSize: 20, fontWeight: FontWeight.w400,color: AppColors.blackColor),
              ),
            ],
          ),
        ),

          Container(
            height: MySize.scaleFactorHeight * 51,
            width: MySize.scaleFactorWidth * 223,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.blueBFF,
            ),
            child: Center(child: TextWidgetInterMedium(title: 'Get Started', fontSize: 20, fontWeight: FontWeight.w500  , color: AppColors.whiteColor)),
          ),
          60.ht,
        ],
      ),
    );
  }
}
