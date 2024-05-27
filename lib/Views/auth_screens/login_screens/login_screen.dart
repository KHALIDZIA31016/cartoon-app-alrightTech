import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/auth_screens/login_screens/login_screen.dart';
import 'package:cartoon_app/Views/good_morning/gdMorning_screen.dart';
import 'package:cartoon_app/Views/loading_Screen/laoding_screen.dart';
import 'package:cartoon_app/Views/onboarding_screens/onBoarding_screens.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';
import '../../../Utils/app_constants/app_constants.dart';
import '../../../Utils/extensions/widget_extensions/text_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppConstants.bgimage), fit: BoxFit.fitWidth
            )
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidgetInterMedium(title: 'Email address or username', fontSize: 18,fontWeight: FontWeight.w400, color: AppColors.blackColor)
                .leftAlignment(),
            4.ht,
            CustomTextField(),
            10.ht,
            TextWidgetInterMedium(title: 'Password', fontSize: 18,fontWeight: FontWeight.w400, color: AppColors.blackColor)
                .leftAlignment(),
            4.ht,
            CustomTextField(),
            50.ht,
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreens()));
              },
              child: Container(
                height: 45, width: 280,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4.0),
                          spreadRadius: 0,
                          blurRadius: 4,
                          color: AppColors.blackColor.withOpacity(.25)
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white
                ),
                child: Center(
                    child: TextWidgetInterBold(title: 'Sign In', fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.blackColor)),
              ),
            ),
            50.ht,
          ],
        ).all_Pdding(55, 95, 0, 0),
      ),
    );
  }
}
