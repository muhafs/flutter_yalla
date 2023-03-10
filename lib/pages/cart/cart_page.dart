import 'package:flutter/material.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/theme.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  static const String id = 'cart_page';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pageHeader(),
      body: pageContent(),
    );
  }

  AppBar pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.chevron_left),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        'Your cart',
        style: kTextStylePrimary.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }

  Widget pageContent() {
    return Container(
      width: double.infinity,
      color: kBackground3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_empty_cart.png',
            width: 80,
          ),
          const SizedBox(height: 20),
          Text(
            'Opss! Your Cart is Empty',
            style: kTextStylePrimary.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Let\'s find your favorite shoes',
            style: kTextStyleSub,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 44,
            child: TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context,
                MainPage.id,
                (route) => false,
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 24,
                ),
                backgroundColor: kColorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Explore Store',
                style: kTextStylePrimary.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
