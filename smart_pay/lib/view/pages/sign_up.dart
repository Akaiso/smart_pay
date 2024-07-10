import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_pay/view/widgets/other_buttons.dart';

import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';
import '../widgets/others.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backButton(),
              const SizedBox(
                height: 25,
              ),
              Text.rich(
                TextSpan(
                    text: "Create a ",
                    style: Theme.of(context).textTheme.displayLarge,
                    children: const <TextSpan>[
                      TextSpan(
                          text: "Smartpay",
                          style: TextStyle(
                            fontFamily: "SFPRODISPLAY",
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color(0xff0A6375),
                          )),
                    ]),
              ),
              Text(
                "account",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 0,
              ),

              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Email',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 0,
              ),

              const SizedBox(height: 32.0),
              CustomButton(
                label: "Sign Up",
                onPressed: () {
                  // Handle sign in logic here
                  final email = _emailController.text;
                  Get.toNamed('/otp_authentication');
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('Email: $email')),
                  // );
                },
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 25,
              ),
              osDownloadSection(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  Text(
                    "Sign In",
                      style: TextStyle(
                          color: Color(0xff0A6375),
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.w600,
                          fontSize: 16)
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Align(alignment: Alignment.center, child: bottomIndicator())
            ],
          ),
        ),
      ),
    ));
  }
}
