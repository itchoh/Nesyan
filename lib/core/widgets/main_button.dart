import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/text_style.dart';

import '../constant/colors.dart';
class MainButton extends StatelessWidget {
  const MainButton({super.key, this.onPressed, required this.funName,this.width,this.hight,this.radius});
 final void Function()? onPressed;
 final String? funName;
  final double? width;
  final double? hight;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width?.w ?? double.infinity,hight?.h ?? 50.h),
          backgroundColor: traditionalGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius?.r ??32.r),
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
