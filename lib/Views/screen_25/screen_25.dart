import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_26/screen_26.dart';
import 'package:flutter/material.dart';


class Screen25 extends StatefulWidget {
  const Screen25({super.key});

  @override
  State<Screen25> createState() => _Screen25State();
}

class _Screen25State extends State<Screen25> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen26(),
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
            image: DecorationImage(image: AssetImage('assets/background/Screen_25.png'), fit: BoxFit.cover),
              gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
          ),

        ),
      ),
    );
  }
}
