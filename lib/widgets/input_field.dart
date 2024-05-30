import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final Icon? icon;
  final bool obscureText;

  const InputField(this.hint,
      {
        this.icon,
        this.obscureText = false,
        super.key
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
      ),
      obscureText: obscureText,
    );
  }
}