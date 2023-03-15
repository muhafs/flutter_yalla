import 'package:flutter/material.dart';
import 'package:yalla/components/cart/checkout_item_tile.dart';
import 'package:yalla/components/cart/checkout_location_tile.dart';
import 'package:yalla/components/page_app_bar.dart';
import 'package:yalla/pages/cart/checkout_success_page.dart';
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
          // TODO: Payment Summary
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
                    'Payment Summary',
                    style: kTextStylePrimary.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                const CheckoutSummaryTile(
                  title: 'Product Quantity',
                  description: '2 Items',
                ),
                const CheckoutSummaryTile(
                  title: 'Product Price',
                  description: '\$575.96',
                ),
                const CheckoutSummaryTile(
                  title: 'Shipping',
                  description: 'Free',
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: const Divider(
                    height: 0,
                    thickness: 1,
                    color: Color(0xFF2E3141),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: kTextStylePrice.copyWith(fontWeight: semibold),
                    ),
                    Text(
                      '\$575.92',
                      style: kTextStylePrice.copyWith(fontWeight: semibold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultMargin),
            child: const Divider(
              height: 0,
              thickness: 1,
              color: kBackground2,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  CheckoutSuccessPage.id,
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
                'Checkout Now',
                style: kTextStylePrimary.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckoutSummaryTile extends StatelessWidget {
  const CheckoutSummaryTile({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTextStyleSecondary.copyWith(
              fontSize: 12,
            ),
          ),
          Text(
            description,
            style: kTextStylePrimary.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
