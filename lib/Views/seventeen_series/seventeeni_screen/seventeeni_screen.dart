import 'dart:async';
import 'package:flutter/material.dart';

import '../../../Utils/app_constants/app_constants.dart';
import '../seventeenJ_screen/seventeenJ_screen.dart';

class SeventeeniScreen extends StatefulWidget {
  const SeventeeniScreen({super.key});

  @override
  State<SeventeeniScreen> createState() => _SeventeeniScreenState();
}

class _SeventeeniScreenState extends State<SeventeeniScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
      builder: (context) => const SeventeenJScreen(),
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
                        image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_i1.png',), fit: BoxFit.fill)
                    ),
                  ),
                  Container(
                    height: 395, width: 502,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_i2.png',), fit: BoxFit.fill)
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
