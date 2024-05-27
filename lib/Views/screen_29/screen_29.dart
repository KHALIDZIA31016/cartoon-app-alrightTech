import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../screen_30/screen_30.dart';


class Screen29 extends StatefulWidget {
  const Screen29({super.key});

  @override
  State<Screen29> createState() => _Screen29State();
}

class _Screen29State extends State<Screen29> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen30(),
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
              image: DecorationImage(image: AssetImage('assets/background/Screen_29.jpg'), fit: BoxFit.cover),
              gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
          ),
        ),
      ),
    );
  }
}
