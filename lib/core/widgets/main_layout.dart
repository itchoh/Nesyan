import 'package:flutter/material.dart';
import '../../game_feature/game_screen.dart';
import '../../home_feature/home_screen.dart';
import '../../schedule_feature/schedule_screen.dart';
import '../../sos_feature/sos_screen.dart';
import 'buttom_navigation.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    ScheduleScreen(),
    GameScreen(),
    SosScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: HomeNavigation(
        currentIndex: currentIndex,
        onChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
