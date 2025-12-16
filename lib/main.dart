import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/icon_style.dart';
import 'package:nesyan/core/constant/icons.dart';
import 'package:nesyan/core/widgets/main_button.dart';
import 'core/constant/colors.dart';
import 'core/widgets/containers.dart';
import 'core/widgets/dailyTextField.dart';
import 'core/widgets/textFieldForm.dart';

void main() {
  runApp(const Nesyan());
}

class Nesyan extends StatelessWidget {
  const Nesyan({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.7, 856.7),
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
      backgroundColor: hintOfRed,
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              // MainButton(funName: "signup", onPressed: () {}),
              // SizedBox(height: 20),
              // MainButton(funName: "signup", onPressed: () {}, width: 0.5.sw),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Dailytextfield(fillcolor: neutralOffWhite10, bordercolor: traditionalGreen92,),
              Reminder_Check(text: 'Check medicine Schedule',color: white,borderColor: grannyApple,)
              , SizedBox(height: 20,)
              ,FamilyBox(title: 'Mohamed', subtitle: 'Brother', number: '0123667894',)
            ,SizedBox(height: 20,)
              ,GameBox(title: 'Card Game', subtitle: 'Description',),
              SizedBox(height: 30,),

            ],
          ),
        )
      ),
    );
  }
}
