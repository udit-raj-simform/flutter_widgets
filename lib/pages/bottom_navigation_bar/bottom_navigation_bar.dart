import 'package:flutter_widgets/utils/exports.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "BottomNavigationBar"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: const [
              ListViewChildHome(
                  widgetName: 'BottomNavigationBarType.fixed',
                  path: BottomNavigationBarFixedPage()),
              ListViewChildHome(
                  widgetName: 'BottomNavigationBarType.shifting',
                  path: BottomNavigationBarShiftingPage()),
            ],
          ),
        ),
      ),
    );
  }
}
