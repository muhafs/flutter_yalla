import 'package:flutter/material.dart';
import 'package:yalla/components/chat/chat_tile.dart';
import 'package:yalla/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool isChatEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: kBgColor1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            'Message Support',
            style: kPrimaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            color: kBgColor3,
            child: isChatEmpty ? const _EmptyChat() : const _ChatList(),
          ),
        ),
      ],
    );
  }
}

class _ChatList extends StatelessWidget {
  const _ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        left: kDefaultMargin,
        top: 21,
        right: kDefaultMargin,
      ),
      children: const [
        ChatTile(
          imageName: 'image_shop_logo',
          title: 'Shoe Store',
          lastChat:
              'Good night, This item is on delivery state to your address',
          date: 'Now',
        ),
        ChatTile(
          imageName: 'image_shop_logo',
          title: 'Shoe Store',
          lastChat:
              'Good night, This item is on delivery state to your address',
          date: 'Now',
        ),
        ChatTile(
          imageName: 'image_shop_logo',
          title: 'Shoe Store',
          lastChat:
              'Good night, This item is on delivery state to your address',
          date: 'Now',
        ),
      ],
    );
  }
}

class _EmptyChat extends StatelessWidget {
  const _EmptyChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon_headset.png',
          width: 80,
        ),
        const SizedBox(height: 20),
        Text(
          'Opss no message yet?',
          style: kPrimaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'You have never done a transaction',
          style: kSubTextStyle,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 44,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 24,
              ),
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Explore Store',
              style: kPrimaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
