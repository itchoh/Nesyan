import 'package:flutter/material.dart';
import 'package:nesyan/core/constant/icons.dart';
import 'package:nesyan/core/widgets/containers.dart';

import '../core/constant/text_style.dart';
import '../core/widgets/main_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 100),
        child: Column(
          children: [
            FamilyBox(title: "Son", subtitle: "Son", number: "0000000000"),
            SizedBox(height: 20),
            ContactInfo(
              tittle: 'Contact Info',
              row1: ContactRow(
                iconpath: AppIcons.email,
                answer: 'Email',
                disease: 'mona@gmail.com',
              ),
              row2: ContactRow(
                iconpath: AppIcons.email,
                answer: 'Email',
                disease: 'mona@gmail.com',
              ),
              row3: ContactRow(
                iconpath: AppIcons.email,
                answer: 'Email',
                disease: 'mona@gmail.com',
              ),
            ),
            ContactInfo(
              tittle: 'Contact Info',
              row1: ContactRow(
                iconpath: AppIcons.email,
                answer: 'Email',
                disease: 'mona@gmail.com',
                greenColor: false,
              ),
              row2: ContactRow(
                iconpath: AppIcons.email,
                answer: 'Email',
                disease: 'mona@gmail.com',
                greenColor: false,
              ),
            ),
            SizedBox(height: 20),
            MedicineContainer(
              iconpath: AppIcons.drug,
              tittle: 'Donepezil',
              subtitle: '10mg tablet',
              time: '12:00 PM',
            ),
            SizedBox(height: 20),
            MedicineContainer(
              iconpath: AppIcons.drug,
              tittle: 'Donepezil',
              subtitle: '10mg tablet',
              time: '12:00 PM',
              isTaken: false,
            ),
            SizedBox(height: 20),
            MedicineContainer(
              iconpath: AppIcons.drug,
              tittle: 'Donepezil',
              subtitle: '10mg tablet',
              time: '12:00 PM',
              isTaken: false,
              editable: true,
            ),
            SizedBox(height: 20),
            AppointmentContainer(
              iconpath: AppIcons.reminder,
              tittle: 'Dr. Sarah Mitchell',
              subtitle: 'Neurologist',
              time: 'Nov 25, 2024 ',
              type: 'Check-up',
              location: 'Memory Care',
            ),
            SizedBox(height: 20),
            AppointmentContainer(
              iconpath: AppIcons.reminder,
              tittle: 'Dr. Sarah Mitchell',
              subtitle: 'Neurologist',
              time: 'Nov 25, 2024 ',
              type: 'Check-up',
              location: 'Memory Care',
              editable: true,
            ),
            SizedBox(height: 20),
            // RoutineContainer(iconpath: AppIcons.reminder),
            // SizedBox(height: 20),
            GameContainer(check: false),
            SizedBox(height: 20),
            SizedBox(height: 20),
            FamilyContainer(),
          ],
        ),
        //MainButton(funName: "home", onPressed: () {},textstyle: AppFontStyle.buttont(),),
      ),
    );
  }
}
