import 'package:flutter_widgets/utils/exports.dart';
import 'package:flutter_widgets/utils/exports_cupertino.dart';

class CupertinoActionSheetPage extends StatefulWidget {
  const CupertinoActionSheetPage({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetPage> createState() =>
      _CupertinoActionSheetPageState();
}

class _CupertinoActionSheetPageState extends State<CupertinoActionSheetPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "CupertinoActionSheet"),
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
                ElevatedButton(
                  onPressed: () => showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      title: const Text('Terms and Conditions Agreement'),
                      message:
                          const Text('Do you accept the terms and conditions?'),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: const Text('Okay'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                  child: const Text("Show Dialog"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
