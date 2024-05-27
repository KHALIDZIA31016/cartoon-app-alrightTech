import 'package:cartoon_app/Utils/app_colors/app_colors.dart';
import 'package:cartoon_app/Utils/extensions/widget_extensions/text_widget.dart';
import 'package:cartoon_app/Views/auth_screens/Signup_screen/signup_screen.dart';
import 'package:cartoon_app/Views/onboarding_screens/pages/page_1.dart';
import 'package:cartoon_app/Views/onboarding_screens/pages/page_2.dart';
import 'package:cartoon_app/Views/onboarding_screens/pages/page_3.dart';
import 'package:cartoon_app/Views/onboarding_screens/pages/page_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Utils/my_size/my_size.dart';


class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: MySize.scaleFactorHeight * 51,
          //   width: MySize.scaleFactorWidth * 223,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30),
          //     color: AppColors.blueBFF,
          //   ),
          //   child: Center(child: TextWidgetInterMedium(title: 'Get Started', fontSize: 20, fontWeight: FontWeight.w500  , color: AppColors.whiteColor)),
          // ),
          PageView(
            controller: _controller,
            children: const [
              PageOne(),
              PageTwo(),
              PageThree(),
              PageFour(),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.6),
              child: SmoothPageIndicator(controller: _controller, count: 4, )
          ),
          Padding(
              padding: const EdgeInsets.only(top: 40, right: 10),
              child: TextButton(onPressed: (){
                _controller.jumpToPage(4);
              }, child: TextWidgetInterRegular(title: 'Skip', fontSize: 20, fontWeight: FontWeight.w500,color: AppColors.blueBFF)).rightAlignment()),
        ]
      ),
    );
  }
}
