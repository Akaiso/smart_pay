import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

class SecondOnBoarding extends StatefulWidget {
  const SecondOnBoarding({super.key});

  @override
  State<SecondOnBoarding> createState() => _SecondOnBoardingState();
}

class _SecondOnBoardingState extends State<SecondOnBoarding> {
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
                                child: Image.asset("assets/images/device2.png"))),
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
                          top: 175,
                          right: 80,
                          child: Image.asset("assets/images/contact.png"),
                        ),
                        Positioned(
                            top: 93,
                            left: 85,
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
                                  height: 10,
                                ),
                                SvgPicture.asset("assets/images/indicator2.svg"),
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
