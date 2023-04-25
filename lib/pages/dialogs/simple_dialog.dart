import 'package:flutter_widgets/utils/exports.dart';

class SimpleDialogWidget extends StatefulWidget {
  const SimpleDialogWidget({Key? key}) : super(key: key);

  @override
  State<SimpleDialogWidget> createState() => _SimpleDialogWidgetState();
}

class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Simple Dialog withOptions"),
      body: Center(
        child: Container(
          height: 400,
          width: MyConstants.width,
          margin: MyConstants.marginSym,
          child: GlassMorphicBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: const Text("Choose an Option"),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        clipBehavior: Clip.antiAlias,
                        shadowColor: Colors.white,
                        surfaceTintColor: Colors.blue,
                        children: [
                          SimpleDialogOption(
                              child: const Text("Biriyani"),
                              onPressed: () {
                                setState(() => selectedValue = "Biriyani");
                                debugPrint(selectedValue.toString());
                                Navigator.pop(context);
                              }),
                          SimpleDialogOption(
                            child: const Text("Butter Naan"),
                            onPressed: () {
                              setState(() => selectedValue = "Butter Naan");
                              debugPrint(selectedValue.toString());
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text("Plain Chapati"),
                            onPressed: () {
                              setState(() => selectedValue = "Plain Chapati");
                              debugPrint(selectedValue.toString());
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text("Masala Parantha"),
                            onPressed: () {
                              setState(() => selectedValue = "Masala Parantha");
                              debugPrint(selectedValue.toString());
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text("Show Dialog"),
                ),
                SizedBox(
                  height: MyConstants.height * 0.05,
                ),
                Text(
                  "I would like to eat ${selectedValue ?? "Nothing"}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
