import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding_1 extends StatefulWidget {
  const Onboarding_1({super.key});

  @override
  State<Onboarding_1> createState() => Onboarding_1State();
}

class Onboarding_1State extends State<Onboarding_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
     // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                      color: Color(0xff2FA2B9),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/device1.png"))),
                  // ShaderMask(shaderCallback: (Rect bounds) {
                  //   return const LinearGradient(begin: Alignment.topCenter,
                  //       end: Alignment.bottomCenter,
                  //       colors: [Colors.transparent, Colors.black], stops: [0.7, 0.7]).createShader(bounds);
                  // },
                  //   //  blendMode: BlendMode.dstIn,
                  // child: Opacity(opacity: 1,
                  // child: Image.asset("assets/images/device_surround.png"))),
                  Positioned(
                      top: 200,
                      //left: 12,

                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          //color: Colors.blue,
                          decoration: const BoxDecoration(
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
                      child:
                          SvgPicture.asset("assets/images/direct_deposit.svg")),
                  Positioned(
                    top: 145,
                    right: 80,
                    child: SvgPicture.asset("assets/images/this_month.svg"),
                  ),
                  Positioned(
                      top: 30,
                      left: 85,
                      child: SvgPicture.asset("assets/images/shield.svg")),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 670),
                      Container(
                        height: 50,
                        child: Text(
                          "Finance app the safest\n and most trusted",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 800),
                      Container(
                        height: 50,
                        child: Text(
                          "Finance app the safest\n and most trusted",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 960),
                      Container(
                        height: 50,
                        child: Text(
                          "Finance app the safest\n and most trusted",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 1100),
                      Container(
                        height: 50,
                        child: Text(
                          "Finance app the safest\n and most trusted",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 1200),
                      Container(
                        height: 50,
                        child: Text(
                          "Finance app the safest\n and most trusted",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Column()
            ],
          ),
        ),
      ),
    ));
  }
}
