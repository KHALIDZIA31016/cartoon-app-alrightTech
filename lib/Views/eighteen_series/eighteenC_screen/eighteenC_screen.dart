import 'dart:async';

import 'package:cartoon_app/Views/auth_screens/login_screens/login_screen.dart';
import 'package:cartoon_app/Views/eighteen_series/eighteenD_screen/eighteenD_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';

class EighteenCScreen extends StatefulWidget {
  const EighteenCScreen({super.key});

  @override
  State<EighteenCScreen> createState() => _EighteenCScreenState();
}

class _EighteenCScreenState extends State<EighteenCScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => EighteenDScreen(),
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
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [AppColors.purpleDA, AppColors.purple74]),
                color: Colors.white
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  25.ht,
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b2.jpg',), fit: BoxFit.fill)
                    ),
                  ),
                  25.ht,
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18c2.png',), fit: BoxFit.fill)
                    ),
                  ),
                  10.ht,
                  const Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Consider What it does',style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Agency B',
                        color: AppColors.blackColor,
                      ),),
                    ),
                  ),
                  10.ht,
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b5.png',), fit: BoxFit.fill)
                    ),
                  ),

                  // 25.ht,
                  // // Container(
                  // //   height: 230, width: 504,
                  // //   decoration: const BoxDecoration(
                  // //       image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b4.png',), fit: BoxFit.fill)
                  // //   ),
                  // // ),
                  // Container(
                  //   height: 230, width: 504,
                  //   decoration: const BoxDecoration(
                  //       image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b5.png',), fit: BoxFit.fill)
                  //   ),
                  // ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
