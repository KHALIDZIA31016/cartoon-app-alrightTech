import 'dart:async';
import 'package:cartoon_app/Views/eighteen_series/eighteenA_screen/eighteenA_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';
import '../../../Utils/app_constants/app_constants.dart';
import '../../screen_18/screen_18.dart';

class SeventeenQScreen extends StatefulWidget {
  const SeventeenQScreen({super.key});

  @override
  State<SeventeenQScreen> createState() => _SeventeenQScreenState();
}

class _SeventeenQScreenState extends State<SeventeenQScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
      builder: (context) => const Screen18(),
      ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => StairsScreen()));
          },
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Color(0XFF195EDA), Color(0XFF0E3274)]),
            ),
            child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 525, width: 502,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_q1.png',), fit: BoxFit.fill)
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
