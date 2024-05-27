import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../screen_29/screen_29.dart';


class Screen28 extends StatefulWidget {
  const Screen28({super.key});

  @override
  State<Screen28> createState() => _Screen28State();
}

class _Screen28State extends State<Screen28> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen29(),
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
              image: DecorationImage(image: AssetImage('assets/background/Screen_28.jpg'), fit: BoxFit.cover),
              gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
          ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Image.asset('assets/Images/robot_28.png', height: 155, width: 147,).all_Pdding(220, 0, 0, 50)
           ],
         ),
        ),
      ),
    );
  }
}
