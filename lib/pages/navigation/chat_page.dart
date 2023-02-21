import 'package:flutter/material.dart';
import 'package:yalla/components/chat/chat_tile.dart';
import 'package:yalla/components/empty_page.dart';
import 'package:yalla/pages/chat/detail_chat_page.dart';
import 'package:yalla/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final EmptyPage emptyChat = const EmptyPage(
    pageHeader: 'Message Support',
    imagePath: 'assets/icon_headset.png',
    subTitle: 'You have never done a transaction',
    title: 'Opss no message yet?',
    buttonText: 'Explore Store',
  );

  @override
  Widget build(BuildContext context) {
    // return emptyChat;
    return Column(
      children: [
        pageHeader(),
        pageContent(),
      ],
    );
  }

  Widget pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Message Support',
        style: kTextStylePrimary.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }

  Widget pageContent() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: kBackground3,
        child: chatList(),
      ),
    );
  }

  Widget chatList() {
    return ListView(
      padding: const EdgeInsets.only(
        left: kDefaultMargin,
        top: 21,
        right: kDefaultMargin,
      ),
      children: [
        ChatTile(
          onTap: () {
            Navigator.pushNamed(context, DetailChatPage.id);
          },
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
