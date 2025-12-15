import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/colors.dart';
import 'package:nesyan/core/constant/text_style.dart';
class MainButton extends StatelessWidget {
  const MainButton({super.key, this.onPressed, required this.funName,this.width});
 final void Function()? onPressed;
 final String? funName;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width?.w ?? double.infinity, 50.h),
          backgroundColor: traditionalGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.r),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
        ),
        child: Text("$funName", style: AppFontStyle.buttont()),
      ),
    );
  }
}
