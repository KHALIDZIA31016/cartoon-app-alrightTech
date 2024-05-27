import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_20/screen_20.dart';
import 'package:flutter/material.dart';

class Screen19 extends StatefulWidget {
  const Screen19({super.key});

  @override
  State<Screen19> createState() => _Screen19State();
}

class _Screen19State extends State<Screen19> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen20(),
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
          image: DecorationImage(image: AssetImage(AppConstants.screen19_bg),fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidgetInterBold(title:'Gaming \nZone', fontSize: 50,fontWeight: FontWeight.w700, color: AppColors.whiteColor, align: TextAlign.center),
            44.ht,
            Image.asset(AppConstants.screen_19, height: 286, width: 268,).all_Pdding(55, 0, 0, 0)
          ],
        ),
      ),
    );
  }
}
