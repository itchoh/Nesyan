import 'package:flutter/material.dart';
import 'package:nesyan/core/constant/icons.dart';
import 'package:nesyan/core/widgets/containers.dart';

import '../core/constant/text_style.dart';
import '../core/widgets/main_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName="HomeScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 100),
          child: Column(
            children: [
              FamilyBox(title: "Mohamed",subtitle: "Son",number: "0000000000",),
              SizedBox(height: 20,),
              ContactInfo(text: 'Contact Info'),
              SizedBox(height: 20,),
              AppointmentContainer(iconpath: AppIcons.reminder),
             SizedBox(height: 20,),
              RoutineContainer(iconpath: AppIcons.reminder),
              SizedBox(height: 20,),
              MedicineContainer(iconpath: AppIcons.reminder),
              SizedBox(height: 20,),
              GameContainer() ,
              SizedBox(height: 20,),
              EditMedicineContainer(iconpath:  AppIcons.drug,),
              SizedBox(height: 20,),
              FamilyContainer(),
            ],
          )
        //MainButton(funName: "home", onPressed: () {},textstyle: AppFontStyle.buttont(),),
      ),
    );
  }
}
