import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/colors.dart';
import 'package:nesyan/core/constant/icons.dart';
import 'package:nesyan/core/widgets/main_button.dart';

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
                  style: AppFontStyle.interRegular18(),
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
                Text(title, style: AppFontStyle.interRegular18(c:black)),
                Text(subtitle, style: AppFontStyle.interRegular15(c: black50)),
                Row(
                  children: [
                    Text(number, style: AppFontStyle.interRegular10()),
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
          Text(title, style: AppFontStyle.interMedium20_2(black)),
          Text(subtitle, style: AppFontStyle.interRegular15()),
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
                    AppFontStyle.interRegular12_2(),
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
        BackgroundIcon(iconpath: iconpath),
        SizedBox(width: 12),
        Column(
          children: [
            Text(
              answer,
              style:
                  AppFontStyle.interRegular12_2(
                    c: grayChateau,
                  ),
            ),
            Text(disease, style: AppFontStyle.interRegular10()),
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
    return Container(
      padding: EdgeInsets.all(5),
      height: 26,
      width: 26,
      decoration: BoxDecoration(
        color: grannyApple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: AppIconStyle.small(iconpath, color: traditionalGreen),
    );
  }
}

class AppointmentContainer extends StatelessWidget {
  const AppointmentContainer({super.key, required this.iconpath});
  final String iconpath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'data',
                    style: AppFontStyle.interRegular16_H150(),
                  ),
                  SizedBox(width: 155,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: crystalPeak,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Center(
                      child: Text('Check - up ',style: AppFontStyle.interRegular12_2(c: techBlue),),
                    ),
                  ),
                ],
              ),
              Text('data', style: AppFontStyle.interRegular14()),
              Text('data', style: AppFontStyle.interRegular14()),
              Text('data', style: AppFontStyle.interRegular14()),
            ],
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
      padding: EdgeInsets.all(16),
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
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'data',
                    style: AppFontStyle.interRegular16_H150(),
                  ),
                  SizedBox(width: 155,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: crystalPeak,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Center(
                      child: Text('Check - up ',style: AppFontStyle.interRegular12_2(c: techBlue),),
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

class GameContainer extends StatelessWidget {
  const GameContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),topLeft:Radius.circular(16) ),
            ),
          ),
          SizedBox(width: 12,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Game',style: AppFontStyle.interRegular22__2(),),
              Text('data',style: AppFontStyle.interRegular16_H150(),),
            ],
          ),
          Spacer(),
          Padding(padding: EdgeInsetsGeometry.only(right: 12),child: AppIconStyle.medium(AppIcons.done),),
        ],
      ),
    );
  }
}

class MedicineContainer extends StatelessWidget {
  const MedicineContainer({super.key, required this.iconpath});
  final String iconpath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'data',
                    style: AppFontStyle.interRegular16_H150(),
                  ),
                  SizedBox(width: 185,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: grannyApple,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text('Taken',style: AppFontStyle.interRegular12_2(c: traditionalGreen),),
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

class EditMedicineContainer extends StatelessWidget {
  const EditMedicineContainer({super.key, required this.iconpath});
  final String iconpath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'data',
                    style: AppFontStyle.interRegular16_H150(),
                  ),
                  SizedBox(width: 185,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: grannyApple,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text('Taken',style: AppFontStyle.interRegular12_2(c: traditionalGreen),),
                    ),
                  ),
                ],
              ),
              Text('data', style: AppFontStyle.interRegular14()),
              Text('data', style: AppFontStyle.interRegular14()),
              Row(
                children: [
                  MainButton(funName: "signup", onPressed: () {},width: 130,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.interRegular12_2() ,icon: AppIconStyle.small(
                    AppIcons.privacy,
                    color: grayChateau,
                  ),
                    bordercolor: superGrey,
                  ),
                  SizedBox(width: 20,),
                  MainButton(funName: "signup", onPressed: () {},width: 130,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.interRegular12_2() ,icon: AppIconStyle.small(
                    AppIcons.privacy,
                    color: grayChateau,
                  ),
                    bordercolor: superGrey,
                  ),
                ],
              )
            ],
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
      height: 235,
      width: 162,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(16),
      ),
      child:Column(
        children: [
          Container(
            height: 86,
            padding:EdgeInsets.only(right: 46,left: 46,top: 16) ,
            decoration: BoxDecoration(
              color: gin60,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: chalice,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              color: gin40,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
            ),
            child: Column(
              children: [
                Text('data'),
                Text('data'),
                MainButton(funName: "signup", onPressed: () {},width: 130,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.interRegular12_2() ,icon: AppIconStyle.small(
                  AppIcons.privacy,
                  color: grayChateau,
                ),
                  bordercolor: superGrey,
                ),
              ],
            ),
          ),
          Row(
            children: [
              MainButton(funName: "sig", onPressed: () {},width: 70,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.interRegular12_2() ,icon: AppIconStyle.small(
                AppIcons.privacy,
                color: grayChateau,
              ),
                bordercolor: superGrey,
              ),
              MainButton(funName: "sig", onPressed: () {},width: 70,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.interRegular12_2() ,icon: AppIconStyle.small(
                AppIcons.privacy,
                color: grayChateau,
              ),
                bordercolor: superGrey,
              ),
            ],
          ),
        ],
      ) ,
    );
  }
}
