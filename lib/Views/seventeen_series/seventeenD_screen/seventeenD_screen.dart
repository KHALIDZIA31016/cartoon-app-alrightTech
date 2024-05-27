import 'dart:async';
import 'package:flutter/material.dart';

import '../../../Utils/app_constants/app_constants.dart';
import '../seventeenE_screen/seventeenE_screen.dart';

class SeventeenDScreen extends StatefulWidget {
  const SeventeenDScreen({super.key});

  @override
  State<SeventeenDScreen> createState() => _SeventeenDScreenState();
}

class _SeventeenDScreenState extends State<SeventeenDScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
      builder: (context) => const SeventeenEScreen(),
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
              // gradient: LinearGradient(colors: [AppColors.purpleDA, AppColors.purple74]),
              gradient: LinearGradient(colors: [Color(0XFF195EDA), Color(0XFF0E3274)]),
            ),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 395, width: 502,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_d1.png',), fit: BoxFit.fill)
                    ),
                  ),
                  Container(
                    height: 395, width: 502,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_d2.png',), fit: BoxFit.fill)
                    ),
                  ),


                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
