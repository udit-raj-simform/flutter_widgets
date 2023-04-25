import 'package:flutter_widgets/utils/exports.dart';

class DrawersPage extends StatelessWidget {
  const DrawersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Drawer"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: const [
              ListViewChildHome(
                  widgetName: 'Regular Drawer',
                  path: DrawerPage(url: "https://bit.ly/my_food_image")),
              ListViewChildHome(
                  widgetName: 'EndDrawer',
                  path: EndDrawerPage(url: "https://bit.ly/my_food_image")),
            ],
          ),
        ),
      ),
    );
  }
}
