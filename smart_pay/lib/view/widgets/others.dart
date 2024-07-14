
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_button.dart';


Widget onBoardingBgFade(){
  return Builder(
    builder: (context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 240,
      //color: Colors.blue,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [
                  0.7,
                  0.8,
                  0.9,
                  0.95,
                ],
                colors: [
                  Colors.white,
                  Colors.white70,
                  Colors.white60,
                  Colors.white24,
                ])),
      );
    }
  );
}

Widget osDownloadSection(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: SvgPicture.asset("assets/images/line1.svg")),
          const SizedBox(
            width: 10,
          ),
          const Text("OR"),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 1, child: SvgPicture.asset("assets/images/line2.svg"))
        ],
      ),
      const SizedBox(
        height: 25,
      ),

      //Operating system buttons
      Row(
        children: [
          Expanded(
            flex: 1,
            child: OSButton(
              label: "assets/images/google.svg",
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 1,
            child: OSButton(
              label: "assets/images/apple.svg",
              onPressed: () {},
            ),
          )
        ],
      ),

    ],
  );
}
