import 'package:flutter/material.dart';
import 'package:yalla/components/auth_button.dart';
import 'package:yalla/theme.dart';
import 'package:yalla/components/auth_input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const String id = 'sign_in_page';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: kDefaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: kPrimaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Sign In to Continue',
              style: kSubTextStyle,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: kDefaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an Account? ',
              style: kSubTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              'Sign Up',
              style: kPurpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: kDefaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              //
              const SizedBox(height: 70),
              //
              const AuthInput(
                title: 'Email Address',
                hint: 'Enter your email address',
                icon: 'email',
                isPassword: false,
              ),
              //
              const SizedBox(height: 20),
              //
              const AuthInput(
                title: 'Password',
                hint: 'Enter your password',
                icon: 'password',
                isPassword: true,
              ),
              //
              const SizedBox(height: 30),
              //
              const AuthButton(text: 'Sign In'),
              //
              const Spacer(),
              //
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
