import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/custom_button.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/thumb_up.png'),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Congratulation, James',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                textAlign: TextAlign.center,
                "You've completed the onboarding, \n you can start using "),
            const SizedBox(height: 20),
            CustomButton(label: "Get Started", onPressed: () {})
          ],
        ),
      ),
    ));
  }
}
