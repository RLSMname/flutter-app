import 'package:flutter/material.dart';
import 'package:testproj/widgets/bottom_text.dart';
import 'package:testproj/widgets/forms/login_form.dart';
import 'package:testproj/widgets/forms/register_form.dart';

// Controls the UI elements

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isRegisterScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  //form and switch button
                  isRegisterScreen == true ? const RegisterForm() : const LoginForm(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isRegisterScreen = ! isRegisterScreen;
                      });
                    },
                    behavior: HitTestBehavior.opaque,
                    child: BottomText(isRegisterScreen),
                  )
                ],
              ),
            ),
        ),
      ),

    );
  }
}
