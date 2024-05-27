import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/good_morning/gdMorning_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Screen32 extends StatefulWidget {
  const Screen32({super.key});

  @override
  State<Screen32> createState() => _Screen32State();
}

class _Screen32State extends State<Screen32> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SignUpScreen(),
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
            TextWidgetInterRegular(title: 'Hope you loved this \nsong!', fontSize: 30,fontWeight: FontWeight.w700, color: AppColors.whiteColor, align: TextAlign.center),
            32.ht,
            Image.asset('assets/Icons/mic_icon.png', height: 209, width: 77,),
            32.ht,
            Container(
              height: 59, width: 262,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.blueBFF,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackColor.withOpacity(.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),

                    )
                  ]
              ),
              child: Center(
                child: TextWidgetInterBold(
                    title: 'Back to Home', fontSize: 25, fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
