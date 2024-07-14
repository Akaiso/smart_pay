import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_pay/view/widgets/other_buttons.dart';

import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    //_pinController.dispose();
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
                    Align(alignment: Alignment.centerLeft,
                        child: backButton()),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(alignment: Alignment.centerLeft,
                      child: Text(
                        "Set your PIN code",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(alignment: Alignment.centerLeft,
                      child: Text(
                          "We use state-of-the-art security measures to \n protect your information at all times",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: PinCodeTextField(
                        obscureText: true,
                        appContext: context,
                        length: 6,
                        controller: _pinController,
                        keyboardType: TextInputType.number,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          // borderRadius: BorderRadius.circular(12),
                          fieldHeight: 46,
                          fieldWidth: 46,
                          activeFillColor: Colors.white,
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          activeColor: const Color(0xff2FA2B9),
                          inactiveColor: const Color(0xff2FA2B9),
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
                      height: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const SizedBox(height: 32.0),
                    CustomButton(
                      label: "Create PIN",
                      onPressed: () {
                        _pinController.clear();
                        Get.toNamed('/confirmation');
                        // Handle sign in logic here
                      },
                      width: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
                Align(alignment: Alignment.center, child: bottomIndicator()),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
