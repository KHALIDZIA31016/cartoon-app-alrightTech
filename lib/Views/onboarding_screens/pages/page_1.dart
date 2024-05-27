import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFDFEDFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/Images/consultation.png', height: 195, width: 275,),
          44.ht,
          Center(
            child: TextWidgetInterMedium(
              align: TextAlign.center,
                title: 'Welcome to Systems\n A kid-friendly learning hub.',
                fontSize: 20, fontWeight: FontWeight.w400,color: AppColors.blackColor),
          )
        ],
      ),
    );
  }
}
