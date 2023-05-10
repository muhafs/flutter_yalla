import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yalla/components/profile/profile_input.dart';
import 'package:yalla/models/user_model.dart';
import 'package:yalla/providers/auth_provider.dart';
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
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;

    // TextEditingController nameController =
    //     TextEditingController(text: user.name);
    // TextEditingController usernameController =
    //     TextEditingController(text: user.username);
    // TextEditingController emailController =
    //     TextEditingController(text: user.email);

    TextEditingController nameController =
        TextEditingController(text: 'Muhamad Haspin');
    TextEditingController usernameController =
        TextEditingController(text: 'muhamadhaspin');
    TextEditingController emailController =
        TextEditingController(text: 'muhamadhaspin@gmail.com');

    return Scaffold(
      backgroundColor: kBackground3,
      appBar: pageHeader(),
      // body: pageContent(
      //     user, nameController, usernameController, emailController),
      body: pageContent(nameController, usernameController, emailController),
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

  // Widget pageContent(
  //     UserModel user, nameController, usernameController, emailController) {
  Widget pageContent(nameController, usernameController, emailController) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(kDefaultMargin),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultMargin),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: kTextColorPrimary,
                // backgroundImage: NetworkImage(user.profilePhotoURL),
                backgroundImage: AssetImage('assets/image_profile.png'),
              ),
            ),
            ProfileInput(
              title: 'Name',
              hintText: 'Enter your name',
              controller: nameController,
            ),
            ProfileInput(
              isUsername: true,
              title: 'Username',
              hintText: 'Enter your username',
              controller: usernameController,
            ),
            ProfileInput(
              title: 'Email Address',
              hintText: 'Enter your email address',
              controller: emailController,
            ),
          ],
        ),
      ),
    );
  }
}
