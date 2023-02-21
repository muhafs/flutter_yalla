import 'package:flutter/material.dart';
import 'package:yalla/components/auth/auth_button.dart';
import 'package:yalla/components/auth/auth_footer.dart';
import 'package:yalla/components/auth/auth_header.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/pages/auth/sign_up_page.dart';
import 'package:yalla/theme.dart';
import 'package:yalla/components/auth/auth_input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const String id = 'sign_in_page';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: kDefaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(title: 'Login', subTitle: 'Sign In to Continue'),
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
              AuthButton(
                text: 'Sign In',
                onPressed: () => Navigator.pushNamed(context, MainPage.id),
              ),
              //
              const Spacer(),
              //
              AuthFooter(
                text: 'Don\'t have an Account? ',
                textLink: 'Sign Up',
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
