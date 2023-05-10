import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yalla/components/profile/menu_container.dart';
import 'package:yalla/components/profile/menu_tile.dart';
import 'package:yalla/models/user_model.dart';
import 'package:yalla/pages/auth/sign_in_page.dart';
import 'package:yalla/pages/profile/edit_profile_page.dart';
import 'package:yalla/providers/auth_provider.dart';
import 'package:yalla/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // pageHeader(user),
        pageHeader(),
        pageContent(),
      ],
    );
  }

  // Widget pageHeader(UserModel user) {
  Widget pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultMargin),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: kTextColorPrimary,
                radius: 32,
                // backgroundImage: NetworkImage(user.profilePhotoURL),
                backgroundImage: AssetImage('assets/image_profile.png'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'Hello ${(user.name).split(' ')[0]}',
                      'Hello Muhamad',
                      style: kTextStylePrimary.copyWith(
                        fontWeight: semibold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      // '@${user.username}',
                      '@muhamadhaspin',
                      style: kTextStyleSub.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    SignInPage.id,
                    (route) => false,
                  );
                },
                child: Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                ),
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
                MenuTile(
                  title: 'Edit Profile',
                  onPress: () {
                    Navigator.pushNamed(context, EditProfilePage.id);
                  },
                ),
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
