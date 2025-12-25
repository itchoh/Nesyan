import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nesyan/core/constant/colors.dart';
import '../constant/text_style.dart';

class Dailytextfield extends StatelessWidget {
  const Dailytextfield({
    super.key,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.controller,
    this.maxLines = 1,
    required this.fillcolor,
    required this.bordercolor,
    this.hintText,
  });
  final Widget? suffixIcon;
  final String? hintText;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Color? fillcolor;
  final Color bordercolor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: AppFontStyle.interLight18(c: black),
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator: validator,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppFontStyle.interMedium11_H135(),
        isDense: true,
        suffixIcon: suffixIcon == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(left: 8, right: 16),
                child: suffixIcon,
              ),
        suffixIconConstraints: const BoxConstraints(
          minWidth: 16,
          minHeight: 16,
        ),
        suffixIconColor: rainbowGrey,
        filled: true,
        fillColor: fillcolor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: bordercolor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: bordercolor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: bordercolor, // slightly darker on focus
            width: 1,
          ),
        ),
      ),
    );
  }
}
