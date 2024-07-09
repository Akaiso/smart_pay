import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 76.29,
                  width: 90.24,
                  child: Image.asset("assets/images/padlock_illustration.png")),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Password Recovery",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Enter your registered email below to receive \n password instructions ",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 16.0),
              TextField(
                focusNode: _focusNode,
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Email',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xff2FA2B9)),
                      borderRadius: BorderRadius.circular(16)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(height: 32.0),
              CustomButton(
                label: "Send email",
                onPressed: () {
                  // Handle sign in logic here
                  final email = _emailController.text;
                  final password = _passwordController.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Email: $email, Password: $password')),
                  );
                },
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 20,
              ),

              //Operating system buttons

              const SizedBox(
                height: 100,
              ),

              const SizedBox(
                height: 50,
              ),
              Align(alignment: Alignment.center, child: bottomIndicator())
            ],
          ),
        ),
      ),
    ));
  }
}
