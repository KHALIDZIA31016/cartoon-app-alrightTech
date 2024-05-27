import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_32/screen_32.dart';
import 'package:flutter/material.dart';

class Screen31 extends StatefulWidget {
  const Screen31({super.key});

  @override
  State<Screen31> createState() => _Screen31State();
}

class _Screen31State extends State<Screen31> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen32(),
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
                image: AssetImage('assets/background/Screen_31.jpg'),
                fit: BoxFit.fitHeight),
          ),

        ),
      ),
    );
  }
}
