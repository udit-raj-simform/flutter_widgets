import 'package:flutter/cupertino.dart';
import 'package:flutter_widgets/utils/exports.dart';

class CupertinoAlertDialogWidget extends StatefulWidget {
  const CupertinoAlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoAlertDialogWidget> createState() =>
      _CupertinoAlertDialogWidgetState();
}

class _CupertinoAlertDialogWidgetState
    extends State<CupertinoAlertDialogWidget> {
  String? selectedValue;
  String value = "Memory is full. Uninstall Something.";
  Color iconColor = Colors.red;
  final TextStyle myStyle =
      const TextStyle(color: Colors.black, fontFamily: "monospace");

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Cupertino Alert Dialog"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text(
                      "Reset",
                      // style: myStyle,
                    ),
                    content: const Text(
                      "This will reset Everything. Are you sure you want to do that?",
                      // style: myStyle,
                    ),
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () {
                          setState(() {
                            value = "Excellent. You have a ton of memory.";
                            iconColor = Colors.lightGreen;
                          });
                          Navigator.pop(context);
                        },
                        // style: ButtonStyle(
                        //   backgroundColor: MaterialStateProperty.all(
                        //     Colors.blueGrey.withOpacity(0.4),
                        //   ),
                        // ),
                        child: const Text(
                          "Yes",
                          // style: myStyle,
                        ),
                      ),
                      CupertinoDialogAction(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "No",
                          // style: myStyle,
                        ),
                      ),
                    ],
                  ),
                  barrierDismissible: false,
                );
              },
              child: const Text("Show Alert Dialog"),
            ),
            SizedBox(
              height: MyConstants.height * 0.05,
            ),
            Icon(
              Icons.delete,
              size: 40.0,
              color: iconColor,
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
