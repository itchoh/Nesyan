import 'package:flutter/material.dart';
import 'package:nesyan/core/widgets/containers.dart';

import '../core/constant/text_style.dart';
import '../core/widgets/main_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName="HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 100),
      child: FamilyBox(title: "Mohamed",subtitle: "Son",number: "0000000000",)
      //MainButton(funName: "home", onPressed: () {},textstyle: AppFontStyle.buttont(),),
    );
  }
}
