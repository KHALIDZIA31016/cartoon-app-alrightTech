import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../screen_19/screen_19.dart';
import '../screen_28/screen_28.dart';


class Screen27 extends StatefulWidget {
  const Screen27({super.key});

  @override
  State<Screen27> createState() => _Screen27State();
}

class _Screen27State extends State<Screen27> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen28(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
          ),
          child: Stack(
            children: [
              Image.asset('assets/background/screen_27.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidgetInterBold(title: 'Escape\n Room', fontSize: 50, fontWeight: FontWeight.w400, color: AppColors.whiteColor).all_Pdding(100, 0, 0, 60),
                  Image.asset('assets/Images/snow_lamp.png', height: 203, width: 176,).all_Pdding(100, 0, 0, 0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
