import 'dart:async';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../seventeenA_screen/seventeenA_screen.dart';

class SeventeenScreen extends StatefulWidget {
  const SeventeenScreen({super.key});

  @override
  State<SeventeenScreen> createState() => _SeventeenScreenState();
}

class _SeventeenScreenState extends State<SeventeenScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SeventeenAScreen(),
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
                image: DecorationImage(image: AssetImage(AppConstants.screen_17aImage), fit: BoxFit.fitWidth
                )
            ),
          ),
        ),
      ),
    );
  }
}
