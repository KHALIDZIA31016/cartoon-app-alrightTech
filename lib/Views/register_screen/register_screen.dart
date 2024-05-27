import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/app_constants/app_constants.dart';
import 'package:cartoon_app/Utils/my_size/my_size.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/auth_screens/login_screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/extensions/widget_extensions/text_widget.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity, width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppConstants.bgimage2), fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppConstants.sysExplorer),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              child: Container(
                height: 56, width: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 4.0),
                          spreadRadius: 0,
                          blurRadius: 4,
                          color: AppColors.blackColor.withOpacity(.25)
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white
                ),
                child: Center(
                    child: TextWidgetInterBold(title: 'Sign In', fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.blackColor)),
              ),
            ),
            18.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidgetInterMedium(title: 'Don\'t have an account?', fontSize: 18, color: AppColors.blackColor, fontWeight: FontWeight.w400),
                const SizedBox(width: 15,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    },
                    child: TextWidgetInterMedium(title: 'Sign up', fontSize: 18, color: AppColors.blueBFF, fontWeight: FontWeight.w400))
              ],),
            26.ht,
            TextWidgetInterBold(title: 'OR', fontSize: 24, color: AppColors.blackColor, fontWeight: FontWeight.w400),
            26.ht,
            Container(
              height: 56, width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4.0),
                      spreadRadius: 0,
                      blurRadius: 4,
                      color: AppColors.blackColor.withOpacity(.25)
                  )
                ],
                borderRadius: BorderRadius.circular(40),
                color: AppColors.whiteColor,
              ),
              child: Center(
                  child: TextWidgetInterBold(title: 'Gest Mode', fontSize: 18, color: AppColors.blackColor, fontWeight: FontWeight.w700)
              ),
            ),

          ],
        ),
      ),
    );
  }
}


extension EmptySpace on num {
  SizedBox get ht => SizedBox(height: toDouble());
  SizedBox get wt => SizedBox(width: toDouble());
}