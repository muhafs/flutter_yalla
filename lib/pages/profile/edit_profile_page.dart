import 'package:flutter/material.dart';
import 'package:yalla/components/profile/profile_input.dart';
import 'package:yalla/theme.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  static const String id = 'edit_profile_page';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackground3,
      appBar: pageHeader(),
      body: pageContent(),
    );
  }

  AppBar pageHeader() {
    return AppBar(
      backgroundColor: kBackground1,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                  color: kTextColorPrimary,
                ),
                Text(
                  'Edit Profile',
                  style: kTextStylePrimary.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.check),
                  color: kColorPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pageContent() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(kDefaultMargin),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultMargin),
            child: CircleAvatar(
              radius: 50,
              child: Image.asset('assets/image_profile.png'),
            ),
          ),
          const ProfileInput(title: 'Name', hintText: 'Enter your name'),
          const ProfileInput(
              title: 'Username', hintText: 'Enter your username'),
          const ProfileInput(
              title: 'Email Address', hintText: 'Enter your email address'),
        ],
      ),
    );
  }
}
