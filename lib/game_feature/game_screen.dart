import 'package:flutter/material.dart';
import 'package:nesyan/core/widgets/containers.dart';


class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  static String routeName = "GameScreen";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
      child: Column(
        children: [
          ReminderCheck(
            text:
                "Do you play?Do you play?Do you play?Do you play?Do you play?Do you play?Do you play?",
            check: false,
          ),
          ReminderCheck(
            text:
                "Do you play?Do you play?Do you play?Do you play?Do you play?Do you play?Do you play?",
            check: true,
          ),
          GameBox(title: "Card game", subtitle: "Description"),
        ],
      ),
    );
    /*Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 100),
      child: MainButton(funName: "Game", onPressed: () {},textstyle: AppFontStyle.buttont(),
      ),
    );*/
  }
}
