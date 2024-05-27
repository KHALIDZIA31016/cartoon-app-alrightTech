import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../screen_31/screen_31.dart';

class Screen30 extends StatefulWidget {
  const Screen30({super.key});

  @override
  State<Screen30> createState() => _Screen30State();
}

class _Screen30State extends State<Screen30> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen31(),
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
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background/Screen_30.jpg'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 167,
                    width: 161,
                    decoration: BoxDecoration(color: AppColors.blue75, shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(.25),
                            offset: Offset(2, 9),
                            blurRadius: 5.5,
                            spreadRadius: 0,
                          )
                        ]
                    ),
                    child: Center(
                      child: TextWidgetInterBold(
                          title: 'Song \n Time',
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteColor),
                    ),
                  ).all_Pdding(0, 0, 250, 0),
                ],
              ).all_Pdding(110, 0, 0, 10),
              Image.asset('assets/Icons/music_icon.png', height: 153, width: 99,).all_Pdding(70, 0, 200, 0),
            ]
          ),
        ),
      ),
    );
  }
}
