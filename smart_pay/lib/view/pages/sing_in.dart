import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_pay/view/pages/second_onboarding.dart';
import 'package:smart_pay/view/widgets/other_buttons.dart';
import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';
import '../widgets/others.dart';

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align (
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondOnBoarding()));
                        Get.toNamed('/second_onboarding');
                      },
                      child: backButton()),
                ),
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
                const Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Color(0xff0A6375),
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(height: 32.0),
                CustomButton(
                  label: "Sign In",
                  onPressed: () {
                    // Handle sign in logic here
                    final email = _emailController.text;
                    final password = _passwordController.text;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Email: $email, Password: $password')),
                    );
                  },
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 25,
                ),
                osDownloadSection(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                ),
              ],
            ),
            Container(),

            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xff0A6375),
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(alignment: Alignment.center, child: bottomIndicator())
              ],
            )
          ],
        ),
      ),
    );
  }
}
