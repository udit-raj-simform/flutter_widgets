import 'package:flutter_widgets/utils/exports.dart';

class CustomColorPicker {
  pickColor(
    BuildContext context,
    Color? color,
    Widget colorPicker,
  ) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Pick a Color"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StatefulBuilder(builder: (context, setState) => colorPicker)
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Select"),
          )
        ],
      ),
    );
  }
}
