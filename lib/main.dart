import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/icon_style.dart';
import 'package:nesyan/core/constant/icons.dart';
import 'package:nesyan/core/constant/text_style.dart';
import 'package:nesyan/core/widgets/main_button.dart';
import 'core/constant/colors.dart';
import 'core/widgets/daily_textField.dart';
import 'core/widgets/text_fieldForm.dart';

void main() {
  runApp(const Nesyan());
}

class Nesyan extends StatelessWidget {
  const Nesyan({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 856.7),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: Column(
          children: [
            SizedBox(height: 100),

            MainButton(funName: "Delete",textstyle: AppFontStyle.Quection(),width: 140,hight: 25,icon: AppIconStyle.small(AppIcons.delete,color: white),fillcolor: Colors.red,bordercolor: shockingRed,onPressed: (){},
              ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainButton(funName: "signup", onPressed: () {},width: 130,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.AnswerOrTitCardORreminderItemsOrInputButtomSheet() ,icon: AppIconStyle.small(
                  AppIcons.privacy,
                  color: grayChateau,
                ),
                  bordercolor: superGrey,

                ),
                MainButton(funName: "signup", onPressed: () {},width: 130,hight: 32,radius:12,fillcolor: white,textstyle: AppFontStyle.AnswerOrTitCardORreminderItemsOrInputButtomSheet() ,icon: AppIconStyle.small(
                  AppIcons.privacy,
                  color: grayChateau,

                ),
                  bordercolor: superGrey,

                ),
              ],
            ),
            MainButton(funName: "signup", onPressed: () {},textstyle: AppFontStyle.buttont(),),

            SizedBox(height: 10),
            AppTextField(
              hintText: 'Enter your first name',
              prefixIcon: AppIconStyle.medium(
                AppIcons.person,
                color: grayChateau,
              ),
              suffixIcon: AppIconStyle.medium(
                AppIcons.person,
                color: grayChateau,
              ),
            ),
            SizedBox(height: 50),
            Dailytextfield(fillcolor: neutralOffWhite10, bordercolor: traditionalGreen92,)
          ],
        ),
      ),
    );
  }
}
