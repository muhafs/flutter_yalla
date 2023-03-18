import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yalla/pages/cart/cart_page.dart';
import 'package:yalla/pages/cart/checkout_page.dart';
import 'package:yalla/pages/cart/checkout_success_page.dart';
import 'package:yalla/pages/chat/detail_chat_page.dart';
import 'package:yalla/pages/home/product_page.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/pages/auth/sign_in_page.dart';
import 'package:yalla/pages/auth/sign_up_page.dart';
import 'package:yalla/pages/profile/edit_profile_page.dart';
import 'package:yalla/pages/splash_page.dart';
import 'package:yalla/providers/auth_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Yalla App',
        debugShowCheckedModeBanner: false,
        initialRoute: SplashPage.id,
        routes: {
          SplashPage.id: (context) => const SplashPage(),
          SignInPage.id: (context) => const SignInPage(),
          SignUpPage.id: (context) => const SignUpPage(),
          MainPage.id: (context) => const MainPage(),
          DetailChatPage.id: (context) => const DetailChatPage(),
          EditProfilePage.id: (context) => const EditProfilePage(),
          ProductPage.id: (context) => const ProductPage(),
          CartPage.id: (context) => const CartPage(),
          CheckoutPage.id: (context) => const CheckoutPage(),
          CheckoutSuccessPage.id: (context) => const CheckoutSuccessPage(),
        },
      ),
    );
  }
}
