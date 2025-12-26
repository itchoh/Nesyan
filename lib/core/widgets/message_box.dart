import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nesyan/core/constant/text_style.dart';
import 'package:nesyan/core/widgets/main_button.dart';
import '../constant/colors.dart';
class MessageBoxWidget extends StatelessWidget {
  const MessageBoxWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.routeFun,
    required this.isSuccess,
    this.icon,
  });

  final String title;
  final String subTitle;
  final String buttonText;
  final VoidCallback routeFun;
  final bool isSuccess;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// ICON
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSuccess ? ghostWhite : pinkDiamond35,
              ),
              child: icon ??
                  Icon(
                    isSuccess ? Icons.check : Icons.close,
                    color: isSuccess ? traditionalGreen :shockingRed ,
                  ),
            ),

            const SizedBox(height: 20),

            /// TITLE
            Text(
              title,
              style: AppFontStyle.interBold20_H125(),
            ),

            const SizedBox(height: 10),

            /// SUBTITLE
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: AppFontStyle.interRegular16(),
            ),

            const SizedBox(height: 25),

            /// BUTTON (MainButton)
            MainButton(
              width:183.w ,
              funName: buttonText,
              textstyle: AppFontStyle.interSemiBold16_H150(),
              onPressed: () {
                Navigator.pop(context);
                routeFun;

              },
            ),
            if(isSuccess)...[
            SizedBox(height: 16,),
            MainButton(
              bordercolor: cuteGrey80,
              fillcolor: white,
              width:183.w ,
              funName: "Cancel",
              textstyle: AppFontStyle.interSemiBold16_H150(c: black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),]
          ],
        ),
      ),
    );
  }
}

