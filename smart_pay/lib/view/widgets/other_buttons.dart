
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget backButton(){
  return Builder(
    builder: (context) {
      return InkWell(
        onTap: (){Get.back();},
        child: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset("assets/images/back_button.png")),
      );
    }
  );
}