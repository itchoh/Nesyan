import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.onPressed,
    required this.funName,
    this.width,
    this.hight,
    this.radius,
    this.fillcolor = traditionalGreen,
    this.bordercolor,
    this.icon,
    this.textstyle,
  });

  final void Function()? onPressed;
  final String? funName;
  final double? width;
  final double? hight;
  final double? radius;
  final Color? fillcolor;
  final Color? bordercolor;
  final Widget? icon;
  final TextStyle? textstyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w ?? double.infinity,
      height: hight?.h ?? 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: fillcolor,
          shape: RoundedRectangleBorder(
            side: bordercolor == null
                ? BorderSide.none
                : BorderSide(color: bordercolor!),
            borderRadius: BorderRadius.circular(radius?.r ?? 32.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[icon!, SizedBox(width: 4.w)],
            Text(
              funName ?? "",
              style: textstyle,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
