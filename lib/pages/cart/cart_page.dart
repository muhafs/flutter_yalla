import 'package:flutter/material.dart';
import 'package:yalla/components/cart/cart_tile.dart';
import 'package:yalla/components/empty_page.dart';
import 'package:yalla/components/page_app_bar.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/theme.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  static const String id = 'cart_page';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final EmptyPage emptyPage = const EmptyPage(
    imagePath: 'assets/icon_empty_cart.png',
    title: 'Opss! Your Cart is Empty',
    subTitle: 'Let\'s find your favorite shoes',
    buttonText: 'Explore Store',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageAppBar(
            'Your cart',
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.chevron_left),
            ),
          ),
          pageContent(),
          // emptyPage,
          pageFooter(),
        ],
      ),
    );
  }

  Widget pageContent() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: kBackground3,
        child: ListView(
          padding: const EdgeInsets.all(kDefaultMargin),
          children: const [
            CartTile(
              imagePath: 'assets/image_shoes.png',
              title: 'Terrex Urban Low',
              price: '143,98',
              quantity: '2',
            ),
            CartTile(
              imagePath: 'assets/image_shoes.png',
              title: 'Terrex Urban Low',
              price: '143,98',
              quantity: '2',
            ),
            CartTile(
              imagePath: 'assets/image_shoes.png',
              title: 'Terrex Urban Low',
              price: '143,98',
              quantity: '2',
            ),
            CartTile(
              imagePath: 'assets/image_shoes.png',
              title: 'Terrex Urban Low',
              price: '143,98',
              quantity: '2',
            ),
            CartTile(
              imagePath: 'assets/image_shoes.png',
              title: 'Terrex Urban Low',
              price: '143,98',
              quantity: '2',
            ),
          ],
        ),
      ),
    );
  }

  Widget pageFooter() {
    return Container(
      height: 194,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: kDefaultMargin),
      color: kBackground3,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: kDefaultMargin,
              left: kDefaultMargin,
              right: kDefaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: kTextStylePrimary,
                ),
                Text(
                  '\$287,96',
                  style: kTextStylePrice.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultMargin),
            child: const Divider(
              height: 0,
              color: kBackground2,
              thickness: 1,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
              padding: const EdgeInsets.symmetric(
                vertical: 13,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: kColorPrimary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Continue to Checkout',
                    style: kTextStylePrimary.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: kTextColorPrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
