import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/colors.dart';
import 'package:nesyan/core/constant/icons.dart';

import '../constant/icon_style.dart';
import '../constant/text_style.dart';

class ReminderCheck extends StatefulWidget {
  const ReminderCheck({
    super.key,
    this.color = white,
    this.borderColor,
    required this.text,
  });

  final Color? color;
  final Color? borderColor;
  final String text;

  @override
  State<ReminderCheck> createState() => _ReminderCheckState();
}

class _ReminderCheckState extends State<ReminderCheck> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: widget.borderColor ?? widget.color!,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Row(
          children: [
            Icon(
              Icons.check_box_outline_blank,
              color: widget.borderColor,
              size: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  widget.text,
                  style: AppFontStyle.PhoneNumber(),
                  maxLines: isExpanded ? null : 1,
                  overflow: isExpanded
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                ),
              ),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 210.h,
            decoration: BoxDecoration(
              color: grayChateau,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
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
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(title, style: AppFontStyle.Title1(Colors.black)),
          Text(subtitle, style: AppFontStyle.Alert()),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: 32,
            width: double.infinity,
            decoration: BoxDecoration(
              color: padua35,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                text,
                style:
                    AppFontStyle.AnswerOrTitCardORreminderItemsOrInputButtomSheet(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Column(
              children: [
                ContactRow(
                  iconpath: AppIcons.person,
                  answer: 'Gender',
                  disease: 'Female',
                ),
                ContactRow(
                  iconpath: AppIcons.person,
                  answer: 'Gender',
                  disease: 'Female',
                ),
                ContactRow(
                  iconpath: AppIcons.person,
                  answer: 'Gender',
                  disease: 'Female',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
    required this.iconpath,
    required this.answer,
    required this.disease,
  });
  final String iconpath;
  final String answer;
  final String disease;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackgroundIcon(iconpath: iconpath,),
        SizedBox(width: 12),
        Column(
          children: [
            Text(
              answer,
              style:
                  AppFontStyle.AnswerOrTitCardORreminderItemsOrInputButtomSheet(
                    color: grayChateau,
                  ),
            ),
            Text(disease, style: AppFontStyle.disease()),
          ],
        ),
      ],
    );
  }
}
class BackgroundIcon extends StatelessWidget {
  const BackgroundIcon({super.key, required this.iconpath});
  final String iconpath;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            color: grannyApple,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        AppIconStyle.small(iconpath, color: traditionalGreen),
      ],
    );
  }
}

