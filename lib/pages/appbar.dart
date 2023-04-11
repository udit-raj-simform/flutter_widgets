import 'package:flutter_widgets/utils/exports.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "AppBar"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: const [
              ListViewChildHome(
                  widgetName: 'Regular AppBar', path: RegularAppBarPage()),
              ListViewChildHome(
                  widgetName: 'AppBar with Image', path: AppBarWithImage()),
              ListViewChildHome(
                  widgetName: 'AppBar with Tab-bar', path: AppBarWithTabBar()),
              ListViewChildHome(
                  widgetName: 'Sliver AppBar', path: SliverAppBarPage()),
            ],
          ),
        ),
      ),
    );
  }
}
