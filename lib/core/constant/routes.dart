import 'package:flutter/cupertino.dart';
import 'package:nesyan/game_feature/game_screen.dart';
import 'package:nesyan/home_feature/home_screen.dart';
import 'package:nesyan/schedule_feature/schedule_screen.dart';
import 'package:nesyan/sos_feature/sos_screen.dart';

Map<String,WidgetBuilder>routes={
  HomeScreen.routeName: (context) => HomeScreen(),
  ScheduleScreen.routeName: (context) => ScheduleScreen(),
  SosScreen.routeName: (context) => SosScreen(),
  GameScreen.routeName: (context) => GameScreen(),
};