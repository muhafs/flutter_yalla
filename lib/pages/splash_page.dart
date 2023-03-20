import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yalla/pages/auth/sign_in_page.dart';
import 'package:yalla/providers/product_provider.dart';
import 'package:yalla/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String id = 'splash_page';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getInit();

    super.initState();
  }

  getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();

    if (!mounted) return;
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_splash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
