// import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
// import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
// import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
// import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
// import 'package:cartoon_app/Views/register_screen/register_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Screen21 extends StatefulWidget {
//   const Screen21({super.key});
//
//   @override
//   State<Screen21> createState() => _Screen21State();
// }
//
// class _Screen21State extends State<Screen21> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           // image: DecorationImage(image: AssetImage(AppConstants.game_4Image)),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               67.ht,
//               TextWidgetInterBold(title:'Solve this puzzle', fontSize: 40,fontWeight: FontWeight.w700, color: AppColors.blue74, align: TextAlign.center),
//               22.ht,
//               Image.asset(AppConstants.game_4Image, height: 536, width: 268,),
//               24.ht,
//
//               Container(
//                 height: 59, width: 262,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     color: AppColors.blue74,
//                     boxShadow: [
//                       BoxShadow(
//                         color: AppColors.blackColor.withOpacity(.25),
//                         blurRadius: 4,
//                         offset: Offset(0, 4),
//
//                       )
//                     ]
//                 ),
//                 child: Center(
//                   child: TextWidgetInterBold(
//                       title: 'Done', fontSize: 30, fontWeight: FontWeight.w700,
//                       color: AppColors.whiteColor),
//                 ),
//               ),
//               25.ht
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'dart:async';

import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/good_morning/gdMorning_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screen_20/screen_20.dart';
import '../screen_23/screen_23.dart';


class Screen21 extends StatefulWidget {
  const Screen21({super.key});

  @override
  State<Screen21> createState() => _Screen21State();
}

class _Screen21State extends State<Screen21> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Screen23(),
        ),
      );
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0XFF0E3274), Color(0XFF407BFF)])
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          80.ht,
              Image.asset(AppConstants.robot_2Image, height: 210, width: 180,),
              22.ht,
              TextWidgetInterBold(title: 'You played all \ngames! \nGreat Job!,', fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.whiteColor, align: TextAlign.center),
              40.ht,
              Image.asset(AppConstants.starsImage, height: 79, width: 280,),
              80.ht,
              Container(
                height: 59, width: 262,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.blueBFF,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
          
                      )
                    ]
                ),
                child: Center(
                  child: TextWidgetInterBold(
                      title: 'Back to Home', fontSize: 25, fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor),
                ),
              ),
              100.ht,
            ],
          ),
        ),
      ),
    );
  }
}
