import 'package:flutter/material.dart';
import 'package:testproj/widgets/forms/login_form.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: LoginForm(),
    );
  }
}

