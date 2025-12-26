import "package:flutter/material.dart";
import "../widgets/message_box.dart";
abstract class AppDialog {

  /// Loading
  static void showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 15),
            Text("Loading"),
          ],
        ),
      ),
    );
  }

  /// Error
  static void showError(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text(
          "Error",
          style: TextStyle(color: Colors.red),
        ),
        content: Text(error),
      ),
    );
  }

  /// Success / Confirm
  static void showMessageBox({
    required BuildContext context,
    required String title,
    required String subTitle,
    required String buttonText,
    required VoidCallback routeFun,
    bool isSuccess = true,
    Widget? icon,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => MessageBoxWidget(
        title: title,
        subTitle: subTitle,
        buttonText: buttonText,
        routeFun: routeFun,
        isSuccess: isSuccess,
        icon: icon,
      ),
    );
  }
}

