import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Builder bottomIndicator() {
  return Builder(
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(bottom:  10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5 ,
            child: SvgPicture.asset("assets/images/bottom_indicator.svg")),
      );
    }
  );
}
