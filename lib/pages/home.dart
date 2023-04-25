import 'package:flutter_widgets/pages/bottom_sheet/bottom_sheet_page.dart';
import 'package:flutter_widgets/pages/bottom_sheet/cupertino_action_sheet.dart';
import 'package:flutter_widgets/pages/builders/builders.dart';
import 'package:flutter_widgets/pages/dialogs/dialogs.dart';
import 'package:flutter_widgets/utils/exports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text(
          "Widgets",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: const [
              ListViewChildHome(widgetName: 'Container', path: ContainerPage()),
              ListViewChildHome(widgetName: 'TextField', path: TextFieldPage()),
              ListViewChildHome(widgetName: 'Buttons', path: TextFieldPage()),
              ListViewChildHome(widgetName: 'Images', path: TextFieldPage()),
              ListViewChildHome(widgetName: 'Icons', path: TextFieldPage()),
              ListViewChildHome(widgetName: 'AppBar', path: AppBarPage()),
              ListViewChildHome(
                  widgetName: 'BottomNavigationBar',
                  path: BottomNavigationBarPage()),
              ListViewChildHome(widgetName: 'Scaffold', path: ScaffoldPage()),
              ListViewChildHome(widgetName: 'Drawer', path: DrawersPage()),
              ListViewChildHome(
                  widgetName: 'TabPageSelector', path: TabPageSelectorPage()),
              ListViewChildHome(widgetName: 'Dialogs', path: DialogsPage()),
              ListViewChildHome(
                  widgetName: 'BottomSheet', path: BottomSheetPage()),
              ListViewChildHome(
                  widgetName: 'CupertinoActionSheet',
                  path: CupertinoActionSheetPage()),
              ListViewChildHome(widgetName: 'Builders', path: BuildersPage()),
            ],
          ),
        ),
      ),
    );
  }
}
