import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/back_button.png")),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Create New Password",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Please enter a new password below different \n from the previous password ",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 16.0),
              // TextField(
              //   controller: _passwordController,
              //   obscureText: _obscurePassword,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: const Color(0xffF9FAFB),
              //     labelText: 'Password',
              //     labelStyle: Theme.of(context).textTheme.bodySmall,
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(16),
              //     ),
              //     suffixIcon: InkWell(
              //         onTap: () {
              //           setState(() {
              //             _obscurePassword = !_obscurePassword;
              //           });
              //         },
              //         child: _obscurePassword
              //             ? Image.asset("assets/images/eye_on.png")
              //             : SvgPicture.asset(
              //           "assets/images/eye_off.svg",
              //           fit: BoxFit.scaleDown,
              //         )),
              //     focusedBorder: OutlineInputBorder(
              //         // borderSide: const BorderSide(width: 1, color: Color(0xff2FA2B9)),
              //         borderRadius: BorderRadius.circular(16)),
              //   ),
              // ),
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
                height: 16,
              ),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Confirm Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                      child: _obscureConfirmPassword
                          ? Image.asset("assets/images/eye_on.png")
                          : SvgPicture.asset(
                              "assets/images/eye_off.svg",
                              fit: BoxFit.scaleDown,
                            )),
                ),
                obscureText: _obscureConfirmPassword,
              ),

              const SizedBox(
                height: 150,
              ),
              CustomButton(
                label: "Create a new password",
                onPressed: () {
                  // Handle sign in logic here
                  if (_passwordController != _confirmPasswordController) {
                    (
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Passwords do not match"))),
                    );
                  }
                  // final email = _emailController.text;
                  //final password = _passwordController.text;
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //       content: Text('Email: $email, Password: $password')),
                  // );
                },
                width: MediaQuery.of(context).size.width,
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
