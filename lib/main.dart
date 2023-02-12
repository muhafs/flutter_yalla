import 'package:flutter/material.dart';
import 'package:yalla/pages/sign_in_page.dart';
import 'package:yalla/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.id,
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        SignInPage.id: (context) => const SignInPage(),
      },
    );
  }
}
