import 'package:flutter/material.dart';

import '../core/constant/text_style.dart';
import '../core/widgets/main_button.dart';
class SosScreen extends StatelessWidget {
  const SosScreen({super.key});
  static String routeName="SosScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 100),
        child: MainButton(funName: "Sos", onPressed: () {},textstyle: AppFontStyle.interSemiBold16_H150(c: Colors.white)),
      ));
  }
}
