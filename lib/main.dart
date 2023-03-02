import 'package:flutter/material.dart';
import 'package:yalla/pages/chat/detail_chat_page.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/pages/auth/sign_in_page.dart';
import 'package:yalla/pages/auth/sign_up_page.dart';
import 'package:yalla/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yalla Shopping',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.id,
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        SignInPage.id: (context) => const SignInPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        MainPage.id: (context) => const MainPage(),
        DetailChatPage.id: (context) => const DetailChatPage(),
      },
    );
  }
}
