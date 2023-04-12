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
              ListViewChildHome(widgetName: 'AppBar', path: AppBarPage()),
              ListViewChildHome(widgetName: 'TextField', path: TextFieldPage()),
            ],
          ),
        ),
      ),
    );
  }
}
