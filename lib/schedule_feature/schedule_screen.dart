import 'package:flutter/material.dart';
import 'package:nesyan/core/constant/colors.dart';

import '../core/constant/text_style.dart';
import '../core/utils/app_dailog.dart';
import '../core/widgets/main_button.dart';
class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});
  static String routeName = "ScheduleScreen";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
      child: MainButton(
        funName: "Schedule",
        textstyle: AppFontStyle.interSemiBold16_H150(c: white),
        onPressed: () {
          AppDialog.showMessageBox(
            context: context,
            title: "Success",
            subTitle: "Your schedule has been saved successfully",
            buttonText: "Go to Home",
            routeFun: (){},
            isSuccess: true
          );
        },
      ),
    );
  }
}
