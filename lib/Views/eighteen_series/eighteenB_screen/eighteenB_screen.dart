import 'dart:async';
import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import '../eighteenC_screen/eighteenC_screen.dart';

class EighteenBScreen extends StatefulWidget {
  const EighteenBScreen({super.key});

  @override
  State<EighteenBScreen> createState() => _EighteenBScreenState();
}

class _EighteenBScreenState extends State<EighteenBScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => EighteenCScreen(),
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
                color: Colors.white
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b1.png',), fit: BoxFit.fill)
                    ),
                  ),
                  25.ht,
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b2.jpg',), fit: BoxFit.fill)
                    ),
                  ),
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b3.png',), fit: BoxFit.fill)
                    ),
                  ),
                  25.ht,
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
                  25.ht,
                  // Container(
                  //   height: 230, width: 504,
                  //   decoration: const BoxDecoration(
                  //       image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b4.png',), fit: BoxFit.fill)
                  //   ),
                  // ),
                  Container(
                    height: 230, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18b5.png',), fit: BoxFit.fill)
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
