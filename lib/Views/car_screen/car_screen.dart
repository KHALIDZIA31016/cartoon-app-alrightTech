import 'dart:async';

import 'package:flutter/material.dart';

import '../stairs_screen/stairs_screen.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => StairsScreen(),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => StairsScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Images/sc17_f.png'), fit: BoxFit.fitWidth
              )
            ),
          ),
        ),
      ),
    );
  }
}
