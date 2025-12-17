import 'package:flutter/material.dart';

import '../core/constant/text_style.dart';
import '../core/widgets/main_button.dart';
class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});
  static String routeName="ScheduleScreen";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 100),
      child: MainButton(funName: "Schedule", onPressed: () {},textstyle: AppFontStyle.buttont(),),
    );
  }
}
