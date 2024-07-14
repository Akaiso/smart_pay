import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';
import '../widgets/others.dart';

class SecondOnBoarding extends StatefulWidget {
  const SecondOnBoarding({super.key});

  @override
  State<SecondOnBoarding> createState() => _SecondOnBoardingState();
}

class _SecondOnBoardingState extends State<SecondOnBoarding> {
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
                              alignment: Alignment.center,
                              child: Image.asset("assets/images/device2.png"))),
                      Positioned(
                          top: 220,
                          child: Align(
                            alignment: Alignment.center,
                            child: onBoardingBgFade(),
                          )),
                      Positioned(
                        top: 175,
                        right: 15,
                        child: Image.asset("assets/images/contact.png"),
                      ),
                      Positioned(
                          top: 92,
                          left: -4,
                          child: SvgPicture.asset("assets/images/payment.svg")),
                      Padding(
                        padding: const EdgeInsets.only(top: 320.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                "The fastest transaction\n process only here",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Get easy to pay all your bills with just a few\n steps. Paying your bills become fast and\n efficient",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SvgPicture.asset("assets/images/indicator2.svg"),
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
