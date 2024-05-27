import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_21/screen_21.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen_22/screen_22.dart';

class Screen20 extends StatefulWidget {
  const Screen20({super.key});

  @override
  State<Screen20> createState() => _Screen20State();
}

class _Screen20State extends State<Screen20> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen22(),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              67.ht,
              TextWidgetInterBold(title:'Solve this puzzle', fontSize: 40,fontWeight: FontWeight.w700, color: AppColors.blue74, align: TextAlign.center),
              22.ht,
              Image.asset(AppConstants.game_4Image, height: 536, width: 268,),
              24.ht,

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
