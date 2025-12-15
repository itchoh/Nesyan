import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/widgets/main_button.dart';
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
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           home: Scaffold(
             body: Column(
               children: [
                 SizedBox(height: 100,),
                 MainButton(funName: "signup",onPressed: (){},),
                 SizedBox(height: 100,),
                 MainButton(funName: "signup",onPressed: (){},width:0.5.sw ,),
               ],
             ),
           ),
         );
       },
       //child: const HomeScreen(),
     );
    // MaterialApp(
    // );
  }
}
