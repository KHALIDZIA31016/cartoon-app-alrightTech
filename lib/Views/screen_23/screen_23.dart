import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';

import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../screen_24/screen_24.dart';


class Screen23 extends StatefulWidget {
  const Screen23({super.key});

  @override
  State<Screen23> createState() => _Screen23State();
}

class _Screen23State extends State<Screen23> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen24(),
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
          image: DecorationImage(image: AssetImage('assets/background/Screen_23.png'), fit: BoxFit.cover
          ),
            gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 59, width: 262,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
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
                    title: 'Continue', fontSize: 25, fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor),
              ),
            ),
            20.ht,
          ],
        ),
      ),
    );
  }
}

