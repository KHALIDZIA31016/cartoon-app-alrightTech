import 'package:cartoon_app/Views/auth_screens/login_screens/login_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';
import '../../../Utils/app_constants/app_constants.dart';
import '../../../Utils/extensions/widget_extensions/text_widget.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            // image: DecorationImage(image: AssetImage(AppConstants.bgimage), fit: BoxFit.fitWidth
            image: DecorationImage(image: AssetImage('assets/background/signup_bg.jpg'), fit: BoxFit.fitWidth
            )
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            120.ht,
            TextWidgetInterMedium(title: 'Email address', fontSize: 18,fontWeight: FontWeight.w400, color: AppColors.blackColor)
                .leftAlignment(),
            4.ht,
            CustomTextField(),
            12.ht,
            TextWidgetInterMedium(title: 'Username', fontSize: 18,fontWeight: FontWeight.w400, color: AppColors.blackColor)
                .leftAlignment(),
            4.ht,
            CustomTextField(),
            12.ht,
            TextWidgetInterMedium(title: 'Password', fontSize: 18,fontWeight: FontWeight.w400, color: AppColors.blackColor)
                .leftAlignment(),
            4.ht,
            CustomTextField(),
            12.ht,
            TextWidgetInterMedium(title: 'Confirm Password', fontSize: 18,fontWeight: FontWeight.w400, color: AppColors.blackColor)
        .leftAlignment(),
            4.ht,
            CustomTextField(),
            35.ht,
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
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
                    child: TextWidgetInterBold(title: 'Sign Up', fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.blackColor)),
              ),
            ),
            35.ht,
             Image.asset(AppConstants.sysExplorer, height: 136, width: 190,)
          ],
        ).all_Pdding(55, 95, 0, 0)
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        fillColor: AppColors.whiteColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        )
      ),
    );
  }
}



extension padding on Widget{
  Widget all_Pdding(double left, double right, double top, double bottom) {
    return Padding(padding: EdgeInsets.only(left: left , right: right, top: top, bottom: bottom),
    child: this,
    );
  }
}




extension leftAlign on Widget {
  Widget leftAlignment() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }
}
extension rightBottom_Align on Widget {
  Widget RB_Alignment() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
}
extension rightAlign on Widget {
Widget rightAlignment() {
  return Align(
    alignment: Alignment.topRight
    ,
    child: this,
  );
}
}