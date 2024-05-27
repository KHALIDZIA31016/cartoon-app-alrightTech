import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_21/screen_21.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen22 extends StatefulWidget {
  const Screen22({super.key});

  @override
  State<Screen22> createState() => _Screen22State();
}

class _Screen22State extends State<Screen22> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen21(),
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
          // image: DecorationImage(image: AssetImage(AppConstants.game_4Image)),
        ),
        child: SingleChildScrollView(
          child: Column(

            children: [
              67.ht,
              TextWidgetInterBold(title:'Find me!', fontSize: 40,fontWeight: FontWeight.w700, color: AppColors.blue74, align: TextAlign.center),
              Image.asset(AppConstants.mazeImage, height: 336, width: 268,),
              10.ht,
              Image.asset(AppConstants.robo_advisorImage, height: 65, width: 73,),
              120.ht,
              Container(
                height: 59, width: 262,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.blue74,
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
                      title: 'Done', fontSize: 30, fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor),
                ),
              ),
              25.ht
            ],
          ),
        ),
      ),
    );
  }
}
