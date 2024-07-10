import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_pay/view/pages/first_onboarding.dart';
import 'package:smart_pay/view/pages/second_onboarding.dart';

import '../pages/sing_in.dart';

class ClassPageView extends StatefulWidget {
  const ClassPageView({super.key});

  @override
  State<ClassPageView> createState() => _ClassPageViewState();
}

class _ClassPageViewState extends State<ClassPageView> {

  PageController _pageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const [
            FirstOnBoarding(),
            SecondOnBoarding(),
            SignIn()
          ],
        ),
      ),
    );
  }
}
