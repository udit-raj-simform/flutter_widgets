import 'package:flutter_widgets/pages/builders/builder.dart';
import 'package:flutter_widgets/pages/builders/future_builder.dart';
import 'package:flutter_widgets/pages/builders/layout_builder.dart';
import 'package:flutter_widgets/pages/builders/orientation_builder.dart';
import 'package:flutter_widgets/pages/builders/stream_builder.dart';
import 'package:flutter_widgets/utils/exports.dart';

class BuildersPage extends StatelessWidget {
  const BuildersPage({Key? key}) : super(key: key);

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
                  widgetName: 'Future Builder', path: FutureBuilderPage()),
              ListViewChildHome(
                  widgetName: 'Stream Builder', path: StreamBuilderPage()),
              ListViewChildHome(widgetName: 'Builder', path: BuilderPage()),
              ListViewChildHome(
                  widgetName: 'Layout Builder', path: LayoutBuilderPage()),
              ListViewChildHome(
                  widgetName: 'Orientation Builder',
                  path: OrientationBuilderPage()),
            ],
          ),
        ),
      ),
    );
  }
}
