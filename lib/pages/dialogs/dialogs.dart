import 'package:flutter_widgets/utils/exports.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Dialogs"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: const [
              ListViewChildHome(
                  widgetName: 'Simple Dialog', path: SimpleDialogWidget()),
              ListViewChildHome(
                  widgetName: 'Alert Dialog', path: AlertDialogWidget()),
              ListViewChildHome(
                  widgetName: 'Cupertino Alert Dialog',
                  path: CupertinoAlertDialogWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
