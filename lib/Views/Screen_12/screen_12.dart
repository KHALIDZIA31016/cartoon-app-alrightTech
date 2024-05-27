import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/super_hero/super_hero.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class Screen12 extends StatefulWidget {
  const Screen12({super.key});

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SuperHeroScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/background/screen_12.png', width: 385, height: 705,),
            100.ht,
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 160, width: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0XFF9BB3F2), Color(0XFF413EBE)]),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 160, width: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0XFF9BB3F2), Color(0XFF413EBE)]),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(child: TextWidgetInterBold(title: 'Study \n Time', fontSize: 40, fontWeight: FontWeight.w700, color: AppColors.whiteColor, align: TextAlign.center)),
            100.ht,
          ]
        ),
      ),
    );
  }
}
