import 'package:flutter_widgets/utils/exports.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  String? selectedValue;
  String value = "Memory is full. Uninstall Something.";
  Color iconColor = Colors.red;
  final TextStyle myStyle =
      const TextStyle(color: Colors.white, fontFamily: "monospace");

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Alert Dialog"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.black,
                    elevation: 20.0,
                    title: Text(
                      "Reset",
                      style: myStyle,
                    ),
                    content: Text(
                      "This will reset Everything. Are you sure you want to do that?",
                      style: myStyle,
                    ),
                    actions: [
                      TextButton(
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
                        child: Text(
                          "Yes",
                          style: myStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.blueGrey.withOpacity(0.4),
                          ),
                        ),
                        child: Text(
                          "No",
                          style: myStyle,
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
