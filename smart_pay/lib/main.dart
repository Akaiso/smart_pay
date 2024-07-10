import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_pay/view/pages/confirmation_page.dart';
import 'package:smart_pay/view/pages/create_pin.dart';
import 'package:smart_pay/view/pages/first_onboarding.dart';
import 'package:smart_pay/view/pages/id_page.dart';
import 'package:smart_pay/view/pages/otp_authentication.dart';
import 'package:smart_pay/view/pages/second_onboarding.dart';
import 'package:smart_pay/view/pages/sign_up.dart';
import 'package:smart_pay/view/pages/sing_in.dart';
import 'package:smart_pay/view/pages/splash_screen.dart';
import 'package:smart_pay/view/widgets/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'smart_pay',
      theme: ThemeData(
        canvasColor: Colors.white,
       inputDecorationTheme: const InputDecorationTheme(
         labelStyle: TextStyle(color: Colors.black),
         focusColor: Colors.black,
       ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        textTheme:  const TextTheme(
          displayLarge: TextStyle(
            fontFamily: "SFPRODISPLAY",
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
          bodyMedium: TextStyle(
            fontFamily: "SFPRODISPLAY",
            fontWeight: FontWeight.w400,
            color: Color(0xff6B7280),
            fontSize: 14,
          ),
          bodyLarge: TextStyle(
            fontFamily: "SFPRODISPLAY",
            fontWeight: FontWeight.w600,
            color:  Color(0xff6B7280), //color ?? Color(0xff0A6375),
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            fontFamily: "SFPRODISPLAY",
            fontWeight: FontWeight.w400,
            color: Color(0xff9CA3AF),
            fontSize: 16,
          ),
          displayMedium: TextStyle(
            fontFamily: "SFPRODISPLAY",
            fontWeight: FontWeight.w600,
            color: Color(0xff2FA2B9),
            fontSize: 16,
          ),

        ),
        useMaterial3: true,
      ),
     //home: const SplashScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const SplashScreen(),
            transition: Transition.fadeIn,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)
        ),
        GetPage(
            name: '/onboarding',
            page: () => const ClassPageView(),
            transition: Transition.fadeIn ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 600)),
        GetPage(
            name: '/first_onboarding',
            page: () => const FirstOnBoarding(),
            transition:  Transition.rightToLeft ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/second_onboarding',
            page: () => const SecondOnBoarding(),
            transition:  Transition.rightToLeft ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/sign_in',
            page: () => const SignIn(),
            transition: Transition.rightToLeft ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/sign_up',
            page: () => const SignUp(),
            transition: Transition.rightToLeft ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/otp_authentication',
            page: () => const OTPAuthentication(),
            transition: Transition.rightToLeft ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/id',
            page: () => const IDPage(),
            transition: Transition.rightToLeft ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/create_pin',
            page: () => const CreatePin(),
            transition: Transition.zoom ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: '/confirmation',
            page: () => const ConfirmationPage(),
            transition: Transition.circularReveal ,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 600)),
      ],

      //  routes: {
      //    '/': (context) => const SplashScreen(),
      //    'firstOnBoarding': (context) => const FirstOnBoarding(),
      //  },
    );
  }
}
