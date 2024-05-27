import 'dart:async';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../eighteenB_screen/eighteenB_screen.dart';

class EighteenAScreen extends StatefulWidget {
  const EighteenAScreen({super.key});

  @override
  State<EighteenAScreen> createState() => _EighteenAScreenState();
}

class _EighteenAScreenState extends State<EighteenAScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const EighteenBScreen(),
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
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 407, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18a1.png',), fit: BoxFit.fill)
                    ),
                  ),
                  30.ht,
                  Container(
                    height: 407, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18a2.png',), fit: BoxFit.fill)
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
