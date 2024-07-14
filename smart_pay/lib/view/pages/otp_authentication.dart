import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_pay/view/widgets/other_buttons.dart';

import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

class OTPAuthentication extends StatefulWidget {
  const OTPAuthentication({super.key});

  @override
  State<OTPAuthentication> createState() => _OTPAuthenticationState();
}

class _OTPAuthenticationState extends State<OTPAuthentication> {
  final TextEditingController _otpController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  int counter = 30;

  @override
  void dispose() {
    // _otpController.dispose();
    // _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(alignment: Alignment.centerLeft,child: backButton()),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(  alignment: Alignment.centerLeft,
                      child: Text(
                        "Verify it's you",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(alignment: Alignment.centerLeft,
                      child: Text(
                          "We sent a code to (*****@mail.com). Enter it \n here to identify your identity",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 6,
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),
                        fieldHeight: 46,
                        fieldWidth: 46,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        activeColor: Colors.transparent,
                        inactiveColor: const Color(0xffF9FAFB),
                        selectedColor: const Color(0xff2FA2B9),
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      //backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      focusNode: _focusNode,
                      autoFocus: true,
                      onChanged: (value) {
                        print(value);
                      },
                      onCompleted: (value) {
                        print("Completed: " + value);

                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                      cursorColor: Colors.black,
                    ),
                    // TextField(
                    //   controller: _emailController,
                    //   decoration: InputDecoration(
                    //     filled: true,
                    //     fillColor: const Color(0xffF9FAFB),
                    //     labelText: 'Email',
                    //     labelStyle: Theme.of(context).textTheme.bodySmall,
                    //     border: OutlineInputBorder(
                    //         borderSide: BorderSide.none,
                    //         borderRadius: BorderRadius.circular(16)),
                    //   ),
                    //   keyboardType: TextInputType.emailAddress,
                    // ),

                    const SizedBox(
                      height: 15,
                    ),

                    //Countdown
                    Text(
                      'Resend Code $counter secs',
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff727272)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    CustomButton(
                      label: "Confirm",
                      onPressed: () {
                        Get.toNamed('/id');
                        _otpController.clear();
                        // Handle sign in logic here
                      },
                      width: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),

                //  SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.2,
                // ),
                Align(alignment: Alignment.center, child: bottomIndicator()),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
