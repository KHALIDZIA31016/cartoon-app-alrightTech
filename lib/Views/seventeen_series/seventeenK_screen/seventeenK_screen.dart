import 'dart:async';
import 'package:flutter/material.dart';

import '../../../Utils/app_constants/app_constants.dart';
import '../seventeenL_screen/seventeenL_screen.dart';

class SeventeenKScreen extends StatefulWidget {
  const SeventeenKScreen({super.key});

  @override
  State<SeventeenKScreen> createState() => _SeventeenKScreenState();
}

class _SeventeenKScreenState extends State<SeventeenKScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
      builder: (context) => const SeventeenLScreen(),
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
                        image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_k1.png',), fit: BoxFit.fill)
                    ),
                  ),
                  Container(
                    height: 395, width: 502,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/seventeen_series/17_k2.png',), fit: BoxFit.fill)
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
