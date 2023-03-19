import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yalla/components/auth/auth_button.dart';
import 'package:yalla/components/auth/auth_footer.dart';
import 'package:yalla/components/auth/auth_header.dart';
import 'package:yalla/pages/navigation/main_page.dart';
import 'package:yalla/pages/auth/sign_up_page.dart';
import 'package:yalla/providers/auth_provider.dart';
import 'package:yalla/theme.dart';
import 'package:yalla/components/auth/auth_input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const String id = 'sign_in_page';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isLoading = false;

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
              const AuthHeader(title: 'Login', subTitle: 'Sign In to Continue'),
              //
              AuthInput(
                title: 'Email Address',
                hint: 'Enter your email address',
                icon: 'email',
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
                isLoading: _isLoading,
                text: 'Sign In',
                onPressed: () async {
                  setState(() => _isLoading = true);

                  if (await authProvider.login(
                    email: emailController.text,
                    password: passwordController.text,
                  )) {
                    Navigator.pushReplacementNamed(context, MainPage.id);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: kColorAlert,
                        content: Text(
                          'Oops, Login Failed!',
                          style: kTextStylePrimary,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }

                  setState(() => _isLoading = false);
                },
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
