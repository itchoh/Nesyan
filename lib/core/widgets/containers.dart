import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/colors.dart';
import 'package:nesyan/core/constant/icons.dart';
import 'package:nesyan/core/widgets/main_button.dart';

import '../constant/icon_style.dart';
import '../constant/text_style.dart';

class ReminderCheck extends StatefulWidget {
  ReminderCheck({super.key, required this.text, required this.check});

  bool check;
  final String text;

  @override
  State<ReminderCheck> createState() => _ReminderCheckState();
}

class _ReminderCheckState extends State<ReminderCheck> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17, bottom: 17, left: 15),
      decoration: BoxDecoration(
        color: widget.check != true ? white : grannyApple,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: widget.check != true ? grannyApple : Colors.transparent,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  widget.check = !widget.check;
                });
              },
              icon: Icon(
                widget.check != true
                    ? Icons.check_box_outline_blank
                    : Icons.check_box,
                color: widget.check != true ? grannyApple : taurus,
                size: 24,
              ),
            ),
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
                style: widget.check != true
                    ? AppFontStyle.interLight18()
                    : AppFontStyle.interLight18().copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                maxLines: isExpanded ? null : 1,
                overflow: isExpanded
                    ? TextOverflow.visible
                    : TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
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
    this.imgPath,
  });

  final String title;
  final String subtitle;
  final String number;
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
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
            child: imgPath != null ? Image.asset(imgPath!) : null,
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppFontStyle.interRegular18(c: black)),
                Text(subtitle, style: AppFontStyle.interRegular15(c: black50)),
                Row(
                  children: [
                    Text(
                      number,
                      style: AppFontStyle.interRegular15(c: black50),
                    ),
                    Spacer(flex: 1),
                    AppIconStyle.medium(AppIcons.play, color: black80),
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
  const GameBox({
    super.key,
    required this.title,
    required this.subtitle,
    this.imgPath,
  });

  final String title;
  final String subtitle;
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 8,
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
            child: imgPath != null ? Image.asset(imgPath!) : null,
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Column(
              spacing: 8,
              children: [
                Text(title, style: AppFontStyle.interMedium20_2(c: black)),
                Text(subtitle, style: AppFontStyle.interRegular15(c: black50)),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
    required this.tittle,
    required this.row1,
    required this.row2,
    this.row3,
  });

  final String tittle;
  final ContactRow row1;
  final ContactRow row2;
  final ContactRow? row3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 8,
        children: [
          Container(
            height: 32,
            width: double.infinity,
            decoration: BoxDecoration(
              color: row3 == null ? pinkDiamond35 : padua35,
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
                tittle,
                style: AppFontStyle.interRegular12_2(
                  c: row3 == null ? digitalRed75 : traditionalGreen,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Column(
              spacing: 8,
              children: [
                row1,
                row2,
                row3 == null ? SizedBox() : row3!,
                SizedBox(),
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
    this.greenColor = true,
  });

  final String iconpath;
  final String answer;
  final String disease;
  final bool greenColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackgroundIcon(iconPath: iconpath, greenColor: greenColor),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(answer, style: AppFontStyle.interRegular12(c: grayChateau)),
            Text(disease, style: AppFontStyle.interRegular10(c: black80)),
          ],
        ),
      ],
    );
  }
}

class BackgroundIcon extends StatelessWidget {
  const BackgroundIcon({
    super.key,
    required this.iconPath,
    required this.greenColor,
  });

  final String iconPath;
  final bool greenColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 26,
      width: 26,
      decoration: BoxDecoration(
        color: greenColor == true ? grannyApple : paleNude,
        borderRadius: BorderRadius.circular(10),
      ),
      child: AppIconStyle.small(
        iconPath,
        color: greenColor == true ? traditionalGreen : brownMadder,
      ),
    );
  }
}

/////////////////////////done

class MedicineContainer extends StatelessWidget {
  const MedicineContainer({
    super.key,
    required this.iconpath,
    required this.tittle,
    required this.subtitle,
    required this.time,
    this.isTaken = true,
    this.editable = false,
  });

  final String iconpath;
  final String tittle;
  final String subtitle;
  final String time;
  final bool isTaken;
  final bool editable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: isTaken == true
                    ? grannyApple
                    : simpleLightBlue,
                radius: 16,
                child: AppIconStyle.small(
                  iconpath,
                  color: isTaken == true ? traditionalGreen : livid,
                ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tittle,
                    style: AppFontStyle.interRegular16_H150(c: black),
                  ),

                  Text(
                    subtitle,
                    style: AppFontStyle.interRegular14__2(c: black60),
                  ),
                  Text(time, style: AppFontStyle.interRegular14__2(c: black60)),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: isTaken == true ? grannyApple : warmYellowCream,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    isTaken == true ? 'Taken' : 'Pending',
                    style: AppFontStyle.interRegular12(
                      c: isTaken == true ? traditionalGreen : matteGoldenrod,
                    ),
                  ),
                ),
              ),
            ],
          ),
          editable == true
              ? Column(
                children: [
                  SizedBox(height: 10.h,),
                  Row(
                      children: [
                        SizedBox(width: 8),
                        MainButton(
                          funName: "Edit",
                          onPressed: () {},
                          width: 140.5.w,
                          hight: 30.h,
                          radius: 32,
                          fillcolor: white,
                          textstyle: AppFontStyle.interRegular12(c: black80),
                          icon: AppIconStyle.moreSmall (AppIcons.edit, color: black),
                          bordercolor: starDust50,
                        ),
                        Spacer(),
                        MainButton(
                          funName: "Delete",
                          onPressed: () {},
                          width: 140.5.w,
                          hight: 30.h,
                          radius: 32,
                          fillcolor: brownMadder80,
                          textstyle: AppFontStyle.interRegular12(c: black80),
                          icon: AppIconStyle.moreSmall(AppIcons.delete, color: white),
                          bordercolor: shockingRed,
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                ],
              )
              : SizedBox(),
        ],
      ),
    );
  }
}

class AppointmentContainer extends StatelessWidget {
  const AppointmentContainer({
    super.key,
    required this.iconpath,
    this.editable = false,
    required this.tittle,
    required this.subtitle,
    required this.time,
    required this.type,
    required this.location,
  });

  final String iconpath;
  final bool editable;
  final String tittle;
  final String subtitle;
  final String location;
  final String time;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: blueChalk,
                radius: 16,
                child: AppIconStyle.small(iconpath, color: sportyPurple),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tittle,
                    style: AppFontStyle.interRegular16_H150(c: black),
                  ),

                  Text(
                    subtitle,
                    style: AppFontStyle.interRegular14__2(c: black60),
                  ),
                  Text(time, style: AppFontStyle.interRegular14__2(c: black60)),
                  Text(
                    location,
                    style: AppFontStyle.interRegular14__2(c: black60),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: crystalPeak,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    type,
                    style: AppFontStyle.interRegular12(c: techBlue),
                  ),
                ),
              ),
            ],
          ),
          editable == true
              ? Row(
                  children: [
                    SizedBox(width: 8),
                    MainButton(
                      funName: "Edit",
                      onPressed: () {},
                      width: 140.5.w,
                      hight: 32,
                      radius: 32,
                      fillcolor: white,
                      textstyle: AppFontStyle.interRegular12(c: black80),
                      icon: AppIconStyle.small(AppIcons.edit, color: black),
                      bordercolor: starDust50,
                    ),
                    Spacer(),
                    MainButton(
                      funName: "Delete",
                      onPressed: () {},
                      width: 140.5.w,
                      hight: 32,
                      radius: 32,
                      fillcolor: brownMadder80,
                      textstyle: AppFontStyle.interRegular12(c: black80),
                      icon: AppIconStyle.small(AppIcons.delete, color: white),
                      bordercolor: shockingRed,
                    ),
                    SizedBox(width: 8),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
////////////////////////done

class GameContainer extends StatefulWidget {
  GameContainer({super.key, required this.check});

  bool check;

  @override
  State<GameContainer> createState() => _GameContainerState();
}

class _GameContainerState extends State<GameContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: grayChateau,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Chess', style: AppFontStyle.interRegular20__2(c: black70)),
              Text(
                'Description',
                style: AppFontStyle.interRegular16(c: black35),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsetsGeometry.only(right: 12),
            child: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  widget.check = !widget.check;
                });
              },
              icon: Icon(
                widget.check != true
                    ? Icons.check_box_outline_blank
                    : Icons.check_box,
                color: widget.check != true ? sweetGrey : taurus,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FamilyContainer extends StatelessWidget {
  const FamilyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 162,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 86,
            padding: EdgeInsets.only(right: 46, left: 46, top: 16),
            decoration: BoxDecoration(
              color: gin60,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: chalice,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Container(
            height: 95,
            width: double.infinity,
            decoration: BoxDecoration(color: gin40),
            child: Column(
              spacing: 4,
              children: [
                SizedBox(),
                Text('Ahmed', style: AppFontStyle.interRegular16(c: black70)),
                Text(
                  'Son',
                  style: AppFontStyle.interRegular12(c: traditionalGreen),
                ),
                Text(
                  '012222222222',
                  style: AppFontStyle.interRegular10(c: black50),
                ),
                MainButton(
                  funName: "signup",
                  onPressed: () {},
                  width: 140,
                  hight: 28,
                  radius: 32,
                  fillcolor: traditionalGreen,
                  textstyle: AppFontStyle.interRegular14(c: white),
                  icon: AppIconStyle.small(AppIcons.play, color: white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                spacing: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButton(
                    funName: "Edit",
                    onPressed: () {},
                    width: 70,
                    hight: 26,
                    radius: 32,
                    fillcolor: white,
                    textstyle: AppFontStyle.interRegular12(c: black80),
                    icon: AppIconStyle.small(
                      AppIcons.edit,
                      color: black,
                      size: 12,
                    ),
                    bordercolor: superGrey,
                  ),
                  MainButton(
                    funName: "del",
                    onPressed: () {},
                    width: 70,
                    hight: 26,
                    radius: 32,
                    fillcolor: white,
                    textstyle: AppFontStyle.interRegular12(c: black80),
                    icon: AppIconStyle.small(
                      size: 10,
                      AppIcons.delete,
                      color: brownMadder54,
                    ),
                    bordercolor: superGrey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoutineContainer extends StatelessWidget {
  const RoutineContainer({super.key, required this.iconpath});

  final String iconpath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: blueChalk,
            radius: 16,
            child: AppIconStyle.small(iconpath, color: sportyPurple),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('data', style: AppFontStyle.interRegular16_H150()),
                  SizedBox(width: 155),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: crystalPeak,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Center(
                      child: Text(
                        'Check - up ',
                        style: AppFontStyle.interRegular12_2(c: techBlue),
                      ),
                    ),
                  ),
                ],
              ),
              Text('data', style: AppFontStyle.interRegular14()),
              Text('data', style: AppFontStyle.interRegular14()),
            ],
          ),
        ],
      ),
    );
  }
}
