import 'package:flutter/material.dart';

class CustonInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustonInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
     this.obscureText= false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //  autofocus: true,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      initialValue: "",
      onChanged: (value) {
        // print('value: $value');
      },
      validator: (value) {
        if (value == null) return "Este campo es requierido";
        return value.length < 4 ? "minimo son 4 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // prefixIcon: Icon(Icons.verified_outlined)
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
