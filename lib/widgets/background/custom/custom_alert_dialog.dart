import 'package:flutter_widgets/utils/exports.dart';

class CustomDialogs {
  static String errorValue = "";

  showInputDialog(
    BuildContext context,
    TextEditingController dialogController,
    String buttonTitle,
    String dialogTitle,
    Function()? onPressed,
  ) {
    return showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text(dialogTitle),
          content: TextField(
            controller: dialogController,
            decoration: InputDecoration(errorText: errorValue),
            onChanged: (value) {
              try {
                int.parse(value);
              } catch (e) {
                errorValue = "Value must Either be double or Null";
              }
            },
          ),
          actions: [
            MaterialButton(onPressed: onPressed, child: Text(buttonTitle))
          ],
        ),
      ),
    );
  }
}
