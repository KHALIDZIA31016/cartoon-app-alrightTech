import 'dart:async';
import 'package:cartoon_app/Views/seventeen_series/seventeenA_screen/seventeenA_screen.dart';
import 'package:flutter/material.dart';
import '../car_screen/car_screen.dart';
import '../eighteen_series/eighteenA_screen/eighteenA_screen.dart';


class BedSystemScreen extends StatefulWidget {
  const BedSystemScreen({super.key});

  @override
  State<BedSystemScreen> createState() => _BedSystemScreenState();
}

class _BedSystemScreenState extends State<BedSystemScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SeventeenAScreen(),
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
                          image: DecorationImage(image: AssetImage('assets/Images/cover_images/cover_5.png'), fit: BoxFit.fill)
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
                          height: 22, width: 121,
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
