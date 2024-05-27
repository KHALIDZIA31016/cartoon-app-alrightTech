import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/good_morning/gdMorning_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_25/screen_25.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Screen24 extends StatefulWidget {
  const Screen24({super.key});

  @override
  State<Screen24> createState() => _Screen24State();
}

class _Screen24State extends State<Screen24> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen25(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [

                Image.asset('assets/Images/screen24/screen_24.png', height: 702 , width: 590,),
                Image.asset('assets/Images/screen24/Ellipse.png', height: 248 , width: 248,),
                TextWidgetInterBold(title: 'Finding\nTerms', fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.whiteColor),
                Image.asset('assets/Images/screen24/man_sitting.png', height: 121 , width: 111,).all_Pdding( 280, 0, 0 ,160),
                Image.asset('assets/Images/screen24/question_mark.png', height: 81 , width: 48,).all_Pdding(0, 200, 200, 0),
              ],
            ),
            20.ht,
           ]
        ),
      ),
    );
  }
}
