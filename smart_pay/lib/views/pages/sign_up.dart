import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

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
                height: 20,
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
                         fontSize: 24,color: Color(0xff0A6375),
                       )
                     ),
                   ]
                ),
              ),
              Text("account", style: Theme.of(context).textTheme.displayLarge,),
              const SizedBox(
                height: 20,
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
                height: 20,
              ),

              const SizedBox(height: 32.0),
              CustomButton(
                label: "Sign In",
                onPressed: () {
                  // Handle sign in logic here
                  final email = _emailController.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email: $email')),
                  );
                },
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/line1.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("OR"),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset("assets/images/line2.svg")
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //Operating system buttons
              Row(
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
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
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
