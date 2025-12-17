import 'package:flutter/material.dart';
import '../core/constant/text_style.dart';
import '../core/widgets/main_button.dart';
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});
  static String routeName="GameScreen";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 100),
      child: MainButton(funName: "Game", onPressed: () {},textstyle: AppFontStyle.buttont(),
      ),
    );
  }
}
