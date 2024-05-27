import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_27/screen_27.dart';
import 'package:flutter/material.dart';


class Screen26 extends StatefulWidget {
  const Screen26({super.key});

  @override
  State<Screen26> createState() => _Screen26State();
}

class _Screen26State extends State<Screen26> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen27(),
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
              image: DecorationImage(image: AssetImage('assets/background/Screen_26.jpg'), fit: BoxFit.cover),
              gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
          ),

        ),
      ),
    );
  }
}
