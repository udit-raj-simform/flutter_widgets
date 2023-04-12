import 'package:flutter_widgets/pages/container/animated_container.dart';
import 'package:flutter_widgets/pages/container/container_playground.dart';
import 'package:flutter_widgets/utils/exports.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Container"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: const [
              ListViewChildHome(
                  widgetName: 'Container Properties',
                  path: ContainerPropertiesPage()),
              ListViewChildHome(
                  widgetName: 'Container Playground',
                  path: ContainerPlaygroundPage()),
              ListViewChildHome(
                  widgetName: 'Animated Container',
                  path: AnimatedContainerPage()),
            ],
          ),
        ),
      ),
    );
  }
}
