import 'package:flutter/material.dart';
import 'package:yalla/components/cart/checkout_item_tile.dart';
import 'package:yalla/components/cart/checkout_location_tile.dart';
import 'package:yalla/components/page_app_bar.dart';
import 'package:yalla/theme.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  static const String id = 'checkout_page';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground3,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PageAppBar(
            'Checkout Details',
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.chevron_left),
            ),
          ),
          pageContent(),
        ],
      ),
    );
  }

  Expanded pageContent() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(kDefaultMargin),
        children: [
          // TODO: List Item
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'List Items',
                    style: kTextStylePrimary.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                const CheckoutItemTile(
                  imagePath: 'assets/image_shoes.png',
                  title: 'Terrex Urban Low',
                  price: '143,98',
                  quantity: 2,
                ),
                const CheckoutItemTile(
                  imagePath: 'assets/image_shoes2.png',
                  title: 'Terrex Urban Low Terrex Urban Low Terrex Urban Low',
                  price: '143,98',
                  quantity: 1,
                ),
              ],
            ),
          ),
          // TODO: Address Details
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultMargin),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: kBackground4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Address Details',
                    style: kTextStylePrimary.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CheckoutLocationTile(
                      imagePath: 'assets/icon_store_location.png',
                      title: 'Store Location',
                      address: 'Adidas Core',
                    ),
                    CheckoutLocationTile(
                      imagePath: 'assets/icon_store_location.png',
                      title: 'Your Address',
                      address: 'Marsemoon',
                      isLast: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
Row(
  children: [
    Column(
      children: [
        Image.asset(
          'assets/icon_store_location.png',
          width: 40,
        ),
        Image.asset(
          'assets/icon_line.png',
          height: 30,
        ),
        Image.asset(
          'assets/icon_your_address.png',
          width: 40,
        ),
      ],
    ),
    const SizedBox(width: 12),
    Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 1),
          child: Text(
            'Store Location',
            style: kTextStyleSecondary.copyWith(
              fontSize: 12,
              fontWeight: light,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: kDefaultMargin),
          child: Text(
            'Adidas Core',
            style: kTextStylePrimary.copyWith(
              fontWeight: medium,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 1),
          child: Text(
            'Your Address',
            style: kTextStyleSecondary.copyWith(
              fontSize: 12,
              fontWeight: light,
            ),
          ),
        ),
        Text(
          'Marsemoon',
          style: kTextStylePrimary.copyWith(
            fontWeight: medium,
          ),
        ),
      ],
    ),
  ],
),
*/