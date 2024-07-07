import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_pay/views/widgets/bottom_indicator.dart';
import 'package:smart_pay/views/widgets/custom_button.dart';

class FirstOnBoarding extends StatefulWidget {
  const FirstOnBoarding({super.key});

  @override
  State<FirstOnBoarding> createState() => FirstOnBoardingState();
}

class FirstOnBoardingState extends State<FirstOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Skip",
                    style: Theme.of(context).textTheme.displayMedium,
                  )
                ],
              ),
              const SizedBox(height: 30),
              Container(
                color: Colors.transparent,
                child: Stack(
                  fit: StackFit.loose,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset("assets/images/device1.png"))),
                    Positioned(
                        top: 200,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            //color: Colors.blue,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    stops: [
                                      0.98,
                                      0.95,
                                      0.93,
                                      0.88,
                                      0.79,
                                      0.7,
                                      0.69,
                                      0.68
                                    ],
                                    colors: [
                                      Colors.white10,
                                      Colors.white12,
                                      Colors.white24,
                                      Colors.white30,
                                      Colors.white54,
                                      Colors.white60,
                                      Colors.white70,
                                      Colors.white
                                    ])),
                          ),
                        )),
                    Positioned(
                        top: 215,
                        left: 80,
                        child: SvgPicture.asset(
                            "assets/images/direct_deposit.svg")),
                    Positioned(
                      top: 145,
                      right: 80,
                      child: SvgPicture.asset("assets/images/this_month.svg"),
                    ),
                    Positioned(
                        top: 30,
                        left: 85,
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
                              height: 10,
                            ),
                            SvgPicture.asset("assets/images/indicator1.svg"),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              label: 'Get Started',
                              onPressed: () {},
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
              const Column()
            ],
          ),
        ),
      ),
    ));
  }
}
