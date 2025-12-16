import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/colors.dart';
import 'package:nesyan/core/constant/icons.dart';

import '../constant/icon_style.dart';
import '../constant/text_style.dart';

class Reminder_Check extends StatelessWidget {
  const Reminder_Check({
    super.key,
    this.color = white,
    this.borderColor,
    required this.text,
  });
  final Color? color;
  final Color? borderColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: borderColor == null ? color! : borderColor!,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 18, horizontal: 16),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.check_box_outline_blank,
                color: borderColor,
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 16),
              child: Text(text, style: AppFontStyle.PhoneNumber()),
            ),
          ],
        ),
      ),
    );
  }
}

class FamilyBox extends StatelessWidget {
  const FamilyBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.number,
  });
  final String title;
  final String subtitle;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 304.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 210.h,
            decoration: BoxDecoration(
              color: grayChateau,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppFontStyle.TitleGame()),
                Text(subtitle, style: AppFontStyle.Alert()),
                Row(
                  children: [
                    Text(number, style: AppFontStyle.PhoneNumber()),
                    Spacer(flex: 1),
                    AppIconStyle.medium(AppIcons.play),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GameBox extends StatelessWidget {
  const GameBox({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 304.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 210.h,
            decoration: BoxDecoration(
              color: grayChateau,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
          ),
          SizedBox(height: 8,),
      Text(title, style: AppFontStyle.TitleGame()),
      Text(subtitle, style: AppFontStyle.Alert()),
          SizedBox(height: 8,),
        ],
      ),
    );
  }
}
