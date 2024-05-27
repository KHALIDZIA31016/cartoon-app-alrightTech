import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/good_morning/gdMorning_screen.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_colors/app_colors.dart';
import '../../Utils/app_constants/app_constants.dart';
import '../../Utils/extensions/widget_extensions/text_widget.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Center(child: TextWidgetInterBold(title: 'My Profile', fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.blackColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        Image.asset(AppConstants.girlImage, height: 71, width: 71,).CenterALign(),
        35.ht,
        TextWidgetInterRegular(title: 'Ash', fontSize: 30, fontWeight: FontWeight.w400 , color: AppColors.blue75),
        TextWidgetInterRegular(title: '@ash132', fontSize: 30, fontWeight: FontWeight.w400 , color: AppColors.blueFE),
            71.ht,
        
        
        
            Stack(
                children: [
        
                  Center(
                    child: Container(
                      height: 82, width: 356,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [AppColors.greenC6, AppColors.green27]),
                          boxShadow: [BoxShadow(
                              offset: Offset(0, 44),
                              blurRadius: 50,
                              color: AppColors.blackColor.withOpacity(.25)
                          )]
                      ),
                    ),
                  ),
                  Image.asset(AppConstants.pieChart, height: 72, width: 92,),
                  Row(children: [
                    TextWidgetInterBold(title: '1000', fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.whiteColor).all_Pdding(97, 0, 22, 0),
                    TextWidgetInterBold(title: 'points earned', fontSize:   20, fontWeight: FontWeight.w400, color: AppColors.whiteColor).all_Pdding(10, 0, 25, 0),
                  ],),
        
        
                ]
            ).all_Pdding(25, 25, 0, 0),
            57.ht,
            Stack(
                children: [
        
                  Center(
                    child: Container(
                      height: 82, width: 356,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [AppColors.indigo1FA, AppColors.indigo7FA, AppColors.indigoFE]),
                          boxShadow: [BoxShadow(
                              offset: Offset(0, 44),
                              blurRadius: 50,
                              color: AppColors.blackColor.withOpacity(.25)
                          )]
                      ),
                    ),
                  ),
                  Image.asset(AppConstants.barChart, height: 72, width: 92,),
                  Row(children: [
                    TextWidgetInterBold(title: '#3', fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.whiteColor).all_Pdding(97, 0, 22, 0),
                    TextWidgetInterBold(title: 'rank achieved', fontSize:   20, fontWeight: FontWeight.w400, color: AppColors.whiteColor).all_Pdding(10, 0, 25, 0),
                  ],),
        
        
                ]
            ).all_Pdding(25, 25, 0, 0),
            68.ht,
            Stack(
                children: [
        
                  Center(
                    child: Container(
                      height: 82, width: 356,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [AppColors.indigo1FA, AppColors.indigoFE]),
                          boxShadow: [BoxShadow(
                              offset: Offset(0, 44),
                              blurRadius: 50,
                              color: AppColors.blackColor.withOpacity(.25)
                          )]
                      ),
                    ),
                  ),
                  Image.asset(AppConstants.activiteisIcon, height: 72, width: 92,),
                  Row(children: [
                    TextWidgetInterBold(title: '50', fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.whiteColor).all_Pdding(97, 0, 22, 0),
                    TextWidgetInterBold(title: 'activities attended', fontSize:   20, fontWeight: FontWeight.w400, color: AppColors.whiteColor).all_Pdding(10, 0, 25, 0),
                  ],),
        
        
                ]
            ).all_Pdding(25, 25, 0, 0),
            69.ht,
        
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GDMorningScreen(),));
              },
              child: Container(
                height: 45, width: 257,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.blueBFF,
                  boxShadow: [BoxShadow(
                    color: AppColors.blackColor.withOpacity(.25),
                    offset: Offset(0, 14),
                    blurRadius: 11.3
                  )]
                ),
                child: Center(child: TextWidgetInterMedium(title: 'Back to Home', fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.whiteColor)),
              ),
            ),
        40.ht,
          ],
        ),
      ),
    );
  }
}


extension center_Align on Widget{
  Widget CenterALign(){
    return Center(child: this,);
  }
}