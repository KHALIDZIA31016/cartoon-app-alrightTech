import 'package:flutter/material.dart';

class StairsScreen extends StatefulWidget {
  const StairsScreen({super.key});

  @override
  State<StairsScreen> createState() => _StairsScreenState();
}

class _StairsScreenState extends State<StairsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Images/screen_7m.png'), fit: BoxFit.fitWidth
              )
          ),
        ),
      ),
    );
  }
}
