import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_pay/views/widgets/bottom_indicator.dart';
import 'package:smart_pay/views/widgets/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
              Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/back_button.png")),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "High there",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/wave_emoji.png")),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "welcome back, Sign in to yur account ",
                style: Theme.of(context).textTheme.bodyMedium,
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
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      child: _obscurePassword
                          ? Image.asset("assets/images/eye_on.png")
                          : SvgPicture.asset(
                              "assets/images/eye_off.svg",
                              fit: BoxFit.scaleDown,
                            )),
                ),
                obscureText: _obscurePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Forgot password?",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 32.0),
              CustomButton(
                label: "Sign In",
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/line1.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("OR"),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset("assets/images/line2.svg")
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //Operating system buttons
              Container(
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: Row(
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
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
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
