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
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed('/sign_up');
                  },
                  child: Text(
                    "Skip",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                )
              ],
            ),
            const SizedBox(height: 60),
            Container(
              color: Colors.transparent,
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
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
                          const SizedBox(
                            height: 25,
                          ),
                          CustomButton(
                            label: 'Get Started',
                            onPressed: () {
                              Get.toNamed('/sign_up');
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          bottomIndicator()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
