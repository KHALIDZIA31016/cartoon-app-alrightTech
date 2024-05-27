import 'dart:async';

import 'package:cartoon_app/Views/mom_system/mom_system.dart';
import 'package:flutter/material.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../car_screen/car_screen.dart';
import '../stairs_screen/stairs_screen.dart';


class EverydaySystemScreen extends StatefulWidget {
  const EverydaySystemScreen({super.key});

  @override
  State<EverydaySystemScreen> createState() => _EverydaySystemScreenState();
}

class _EverydaySystemScreenState extends State<EverydaySystemScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MomSystemScreen(),
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
                    SizedBox(height: 100,),
                    Container(
                      height: 390, width: 360,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/Images/cover_images/cover_3.png'), fit: BoxFit.fill),
                          gradient: LinearGradient(colors: [AppColors.blueBFF, AppColors.blue74,])
                      ),
                    ),
                    SizedBox(height: 17,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0XFF407BFF),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 19, width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0XFF407BFF),
                          ),
                        ),
                        SizedBox(width: 10,),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0XFF0F357B),
                        ),
                      ],
                    ),
                    SizedBox(height: 23,),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Read\nwith Me!', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.white),),
                              SizedBox(width: 40,),
                              Image.asset('assets/Images/robot.png', height: 128, width: 121,),

                            ],
                          ),
                          Text('Or', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.white),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, bottom: 25),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 13, horizontal: 42),
                            backgroundColor: Color(0XFF93D7FC),
                          ),
                          onPressed: (){},
                          child: Text('Read Now!', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Color(0XFF123247)),),),
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
