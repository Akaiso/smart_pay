import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';
import '../widgets/others.dart';

class FirstOnBoarding extends StatefulWidget {
  const FirstOnBoarding({super.key});

  @override
  State<FirstOnBoarding> createState() => FirstOnBoardingState();
}

class FirstOnBoardingState extends State<FirstOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed('/sign_up');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Skip",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                LayoutBuilder(builder: (context, constraint) {
                  //calculate positon based on screen size
                  double topPosition = 0; // constraint.maxHeight * 1;
                  double leftPositon = constraint.maxWidth * 0.1;
                  double rightPositon = constraint.maxWidth * 0.1;
                  double bottomPosition = constraint.maxHeight * 0.1;
                  return Stack(
                    children: [
                      Positioned(
                          top: topPosition,
                          left: MediaQuery.of(context).size.width * 0.1,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset("assets/images/device1.png"))),
                      Positioned(
                          top: 220,
                          child: Align(
                            alignment: Alignment.center,
                            child: onBoardingBgFade(),
                          )),
                      Positioned(
                          top: 140,
                          left: 0,
                          child: SizedBox(
                            height: 250,
                            child: SvgPicture.asset(
                                "assets/images/direct_deposit.svg"),
                          )),
                      Positioned(
                        top: 110,
                        right: -15,
                        child: SizedBox(
                            height: 220,
                            child: SvgPicture.asset(
                                "assets/images/this_month.svg")),
                      ),
                      Positioned(
                          top: 25,
                          left: 12,
                          child: SvgPicture.asset("assets/images/shield.svg")),
                      Padding(
                        padding: const EdgeInsets.only(top: 320.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                "Finance app the safest\n and most trusted",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Your finance work starts here. We are here to help\n you track and deal with speeding up your\n transactions",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SvgPicture.asset("assets/images/indicator1.svg"),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1),
                              CustomButton(
                                label: 'Get Started',
                                onPressed: () {
                                  Get.toNamed('/sign_up');
                                },
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            bottomIndicator()
          ],
        ),
      ),
    );
  }
}
