import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/good_morning/gdMorning_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => GDMorningScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(AppConstants.blueCircle, height: 296, width: 296,),
                Image.asset(AppConstants.whiteCircle, height: 239, width: 239,),
                Image.asset(AppConstants.whiteCircle, height: 130, width: 130,),
                Image.asset(AppConstants.blueCircle, height: 193, width: 193,),
                Image.asset(AppConstants.hi_RobotIcon, height: 210, width: 180,),
              ],
            ),
            60.ht,
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               DotContainer(),
               17.wt,
               DotContainer(),
               17.wt,
               DotContainer(),
               17.wt,
               DotContainer(),

             ],
           ),
            35.ht,
            TextWidgetInterRegular(title: 'Loading', fontSize: 20,fontWeight: FontWeight.w400, color: AppColors.whiteColor),
            60.ht,
            TextWidgetInterRegular(title: 'Just wait a  few moments\nWe are taking you there.', fontSize: 20,fontWeight: FontWeight.w400, color: AppColors.whiteColor)
          ],
        ),
      ),
    );
  }
}

class DotContainer extends StatelessWidget {
  const DotContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23, width: 23,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.blueBFF,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(0, 4)
            )
          ]
      ),);
  }
}
