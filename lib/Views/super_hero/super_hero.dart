import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Views/everyday_system/everyday_system.dart';
import 'package:flutter/material.dart';
import '../car_screen/car_screen.dart';
import '../stairs_screen/stairs_screen.dart';


class SuperHeroScreen extends StatefulWidget {
  const SuperHeroScreen({super.key});

  @override
  State<SuperHeroScreen> createState() => _SuperHeroScreenState();
}

class _SuperHeroScreenState extends State<SuperHeroScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const EverydaySystemScreen(),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CarScreen()));
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
                    const SizedBox(height: 100,),
                    Container(
                      height: 390, width: 360,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/Images/cover_images/cover_2.png'), fit: BoxFit.fill),
                        gradient: LinearGradient(colors: [AppColors.blueBFF, AppColors.blue74,])
                      ),
                    ),
                    const SizedBox(height: 17,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0XFF407BFF),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 19, width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color(0XFF407BFF),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0XFF0F357B),
                        ),
                      ],
                    ),
                    const SizedBox(height: 23,),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Read\nwith Me!', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.white),),
                              const SizedBox(width: 40,),
                              Image.asset('assets/Images/robot.png', height: 128, width: 121,),

                            ],
                          ),
                          const Text('Or', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.white),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, bottom: 25),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 42),
                            backgroundColor: const Color(0XFF93D7FC),
                          ),
                          onPressed: (){},
                          child: const Text('Read Now!', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Color(0XFF123247)),),
                        ),
                      ),
                    )
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
