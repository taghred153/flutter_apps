import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  final IconData icon;
  final bool obscuretext;

  const RegisterWidget({
    super.key,
    required this.controller,
    required this.labeltext,
    required this.icon,
    this.obscuretext = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscuretext,
        validator: (value){
          if (value == null || value.isEmpty)
          {
            return "Please Enter This Fiels";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: labeltext,
          border: const OutlineInputBorder(),
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}
