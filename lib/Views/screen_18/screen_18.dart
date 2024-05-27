import 'dart:async';

import 'package:cartoon_app/Views/mom_system/mom_system.dart';
import 'package:flutter/material.dart';
import '../car_screen/car_screen.dart';
import '../eighteen_series/eighteenA_screen/eighteenA_screen.dart';
import '../stairs_screen/stairs_screen.dart';


class Screen18 extends StatefulWidget {
  const Screen18({super.key});

  @override
  State<Screen18> createState() => _Screen18State();
}

class _Screen18State extends State<Screen18> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => EighteenAScreen(),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => CarScreen()));
          },
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0XFF195EDA), Color(0XFF0E3274)])
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 400, width: 360,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/Images/cover_images/cover_3.png'), fit: BoxFit.fill)
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
