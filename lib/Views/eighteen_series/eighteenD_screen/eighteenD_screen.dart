import 'dart:async';

import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:cartoon_app/Views/screen_19/screen_19.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';

class EighteenDScreen extends StatefulWidget {
  const EighteenDScreen({super.key});

  @override
  State<EighteenDScreen> createState() => _EighteenDScreenState();
}

class _EighteenDScreenState extends State<EighteenDScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen19(),
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
                  Container(
                    height: 270, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18d1.png',), fit: BoxFit.fill)
                    ),
                    child: Stack(
                      children: [
                        Center(child: Text('A closed system is a thing that doesn’t take anything in or give\n anything out '
                            '\nImagine a terrarium, which is a sealed glass container with \nplants inside.\n'
                            'While the plants might grow and change things inside the \nterrarium, the  terrarium itself doesn’t take in anything'
                            '\nnew or release anything outside.',
                          style: TextStyle(
                          fontSize: 10,
                          color: AppColors.whiteColor,
                        ),)),
                        Image.asset('assets/Images/robot_2.png', height: 93, width: 93,).all_Pdding(260, 0, 170, 0),
                      ],
                    ),
                  ),
                  25.ht,
                  Container(
                    height: 480, width: 504,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/Images/eighteen_series/screen_18d2.png',), fit: BoxFit.fill)
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
