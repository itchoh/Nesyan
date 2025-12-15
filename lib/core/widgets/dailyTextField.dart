import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nesyan/core/constant/colors.dart';
import '../constant/text_style.dart';

class Dailytextfield extends StatelessWidget {
  const Dailytextfield({super.key, this.suffixIcon, this.keyboardType, this.validator, this.inputFormatters, this.controller});
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: neutralOffWhite10,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
        ],
      ),
        child: TextFormField(
          controller: controller,
          style: AppFontStyle.DailyTextInInputField(),
          keyboardType: keyboardType,
          validator: validator,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: suffixIcon== null
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
            fillColor: neutralOffWhite10,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(
                color: traditionalGreen92,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide:  BorderSide(
                color: traditionalGreen92,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: traditionalGreen92, // slightly darker on focus
                width: 1,
              ),
            ),
          ),
        ),
    );
  }
}
