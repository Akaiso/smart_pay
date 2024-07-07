import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_svg/flutter_svg.dart';

Padding bottomIndicator(){
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: SvgPicture.asset("assets/images/bottom_indicator.svg"),
  );
}