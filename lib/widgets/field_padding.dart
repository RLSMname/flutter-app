import 'package:flutter/material.dart';

class FieldPadding extends StatelessWidget {
  final Widget child;

  const FieldPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
        child: SizedBox(
          height: 50,
          child: Material(
            elevation: 8,
            shadowColor: Colors.black87,
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            child: child,
          ),
        ),
    );
  }
}
