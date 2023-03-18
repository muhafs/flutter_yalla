import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yalla/providers/auth_provider.dart';
import 'package:yalla/theme.dart';
import 'package:yalla/components/auth/auth_button.dart';
import 'package:yalla/components/auth/auth_footer.dart';
import 'package:yalla/components/auth/auth_header.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/components/auth/auth_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static const String id = 'sign_up_page';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: kBackground1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(
                title: 'Sign Up',
                subTitle: 'Register and Happy Shopping',
              ),
              //
              AuthInput(
                title: 'Full Name',
                hint: 'Enter your full name',
                icon: 'name',
                isPassword: false,
                controller: nameController,
              ),
              //
              const SizedBox(height: 20),
              //
              AuthInput(
                title: 'Username',
                hint: 'Enter your username',
                icon: 'username',
                isPassword: false,
                controller: usernameController,
              ),
              //
              const SizedBox(height: 20),
              //
              AuthInput(
                title: 'Email Address',
                hint: 'Enter your email address',
                icon: 'email',
                isPassword: false,
                controller: emailController,
              ),
              //
              const SizedBox(height: 20),
              //
              AuthInput(
                title: 'Password',
                hint: 'Enter your password',
                icon: 'password',
                isPassword: true,
                controller: passwordController,
              ),
              //
              const SizedBox(height: 30),
              //
              AuthButton(
                text: 'Sign Up',
                onPressed: () async {
                  if (await authProvider.register(
                    name: nameController.text,
                    username: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  )) {
                    Navigator.pushReplacementNamed(context, MainPage.id);
                  }
                },
              ),
              //
              const Spacer(),
              //
              AuthFooter(
                text: 'Already have an Account? ',
                textLink: 'Sign In',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
