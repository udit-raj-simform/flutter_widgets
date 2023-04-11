import 'package:flutter_widgets/utils/exports.dart';

class CustomDialogs {
  showInputDialog(
    BuildContext context,
    TextEditingController dialogController,
    String buttonTitle,
    String dialogTitle,
    Function()? onPressed,
  ) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(dialogTitle),
        content: TextField(
          controller: dialogController,
        ),
        actions: [
          MaterialButton(onPressed: onPressed, child: Text(buttonTitle))
        ],
      ),
    );
  }
}
