import 'dart:async';
import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_constants/app_constants.dart';
import '../seventeenC_screen/seventeenC_screen.dart';

class SeventeenBScreen extends StatefulWidget {
  const SeventeenBScreen({super.key});

  @override
  State<SeventeenBScreen> createState() => _SeventeenBScreenState();
}

class _SeventeenBScreenState extends State<SeventeenBScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
      builder: (context) => const SeventeenCScreen(),
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
                  Container(child: Image.asset('assets/Images/seventeen_series/17_b1.png', height: 407, width: 502,)),
                  40.ht,
                  Container(
                      height: 407, width: 502,
                    decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_b2.png',), fit: BoxFit.fill)
                    ),
                  ),


                  ],

                        ),
            ),
        ),
      ),
    ));
  }
}
