import 'package:flutter/material.dart';
import 'package:yalla/components/profile/menu_container.dart';
import 'package:yalla/components/profile/menu_tile.dart';
import 'package:yalla/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        pageHeader(),
        pageContent(),
      ],
    );
  }

  Widget pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultMargin),
          child: Row(
            children: [
              CircleAvatar(
                radius: 32,
                child: Image.asset('assets/image_profile.png'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Muhamad',
                      style: kTextStylePrimary.copyWith(
                        fontWeight: semibold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      '@muhamadhaspin',
                      style: kTextStyleSub.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/button_exit.png',
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pageContent() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(kDefaultMargin),
        color: kBackground3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuContainer(
              title: 'Account',
              children: [
                MenuTile(title: 'Edit Profile', onPress: () {}),
                MenuTile(title: 'Your Orders', onPress: () {}),
                MenuTile(title: 'Help', onPress: () {}),
              ],
            ),
            MenuContainer(
              title: 'General',
              children: [
                MenuTile(title: 'Privacy & Policy', onPress: () {}),
                MenuTile(title: 'Term of Service', onPress: () {}),
                MenuTile(title: 'Rate App', onPress: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
