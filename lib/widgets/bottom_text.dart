import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BottomText extends StatelessWidget {
   final bool isRegisterScreen;
   const BottomText(this.isRegisterScreen,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat',
          ),

          children: [
            TextSpan(
              text: isRegisterScreen
                  ? 'Already have an account? '
                  : 'Don\'t have an account? ',
              style: const TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: isRegisterScreen
                  ? 'Log In'
                  : 'Register',
              style: const TextStyle(
                color: kSecondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
