import 'package:flutter/material.dart';
import 'package:yalla/components/page_app_bar.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({super.key});

  static const String id = 'checkout_success_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground3,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PageAppBar('Checkout Success'),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/icon_empty_cart.png',
                    width: 80,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'You made a transaction',
                    style: kTextStylePrimary.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: kDefaultMargin,
                    left: 93,
                    right: 93,
                  ),
                  child: Text(
                    'Stay at home while we prepare your dream shoes',
                    style: kTextStyleSecondary,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 196,
                  height: 44,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        MainPage.id,
                        (route) => false,
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kColorPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Order Other Shoes',
                      style: kTextStylePrimary.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 196,
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF39374B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'View My Order',
                      style: kTextStyleDisable.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
