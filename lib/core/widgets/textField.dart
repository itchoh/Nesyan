import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nesyan/core/constant/colors.dart';
import '../constant/text_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.controller,
  });

  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: AppFontStyle.TextInInputField(),
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppFontStyle.HintText(),
        prefixIcon: prefixIcon,

        suffixIcon: suffixIcon,
        suffixIconColor: grayChateau,
        filled: true,
        fillColor: luxuryWhite,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: whiteMarble, // light stroke
            width: 1,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: whiteMarble,
            width: 1,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: whiteMarble, // slightly darker on focus
            width: 1.2,
          ),
        ),

      ),
    );
  }
}
