import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../Utils/app_colors/app_colors.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFDFEDFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/Images/tab_child.png', height: 195, width: 275,),
          44.ht,
          Center(
            child: TextWidgetInterMedium(
                align: TextAlign.center,
                title: 'It takes time to learn \n But it’s worth it!',
                fontSize: 20, fontWeight: FontWeight.w400,color: AppColors.blackColor),
          )
        ],
      ),
    );
  }
}
