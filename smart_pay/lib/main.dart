import 'package:flutter/material.dart';
import 'package:smart_pay/views/pages/confirmation_page.dart';
import 'package:smart_pay/views/pages/create_pin.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'smart_pay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        textTheme: const TextTheme(
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
            color:  Color(0xff0A6375),
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
      home:  const ConfirmationPage(),
     //  initialRoute: '/',
     //  routes: {
     //    '/': (context) => const SplashScreen(),
     //    'firstOnBoarding': (context) => const FirstOnBoarding(),
     //  },
    );
  }
}
