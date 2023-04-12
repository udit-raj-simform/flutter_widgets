import 'package:flutter_widgets/utils/exports.dart';
import 'package:flutter_widgets/widgets/background/custom/code_view.dart';
import 'package:flutter_widgets/widgets/background/custom/custom_alert_dialog.dart';
import 'package:flutter_widgets/widgets/background/custom/custom_button.dart';

class ContainerPlaygroundPage extends StatefulWidget {
  const ContainerPlaygroundPage({Key? key}) : super(key: key);

  @override
  State<ContainerPlaygroundPage> createState() =>
      _ContainerPlaygroundPageState();
}

class _ContainerPlaygroundPageState extends State<ContainerPlaygroundPage> {
  late final TextEditingController _editingController;
  late final TextEditingController _dialogController;
  late final TextEditingController _heightController;
  late final TextEditingController _widthController;
  late final TextEditingController _marginController;
  late final TextEditingController _alignmentController;
  late final TextEditingController _paddingController;

  String value = "";

  Key? key;
  Widget? child;
  AlignmentGeometry? alignment;
  Color? color = Colors.pinkAccent;
  double? height = 80.0;
  double? width = 80.0;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  Decoration? decoration;
  Decoration? foreground;
  Matrix4? transform;
  Clip clip = Clip.none;

  @override
  void initState() {
    _editingController = TextEditingController();
    _dialogController = TextEditingController();
    _heightController = TextEditingController();
    _widthController = TextEditingController();
    _marginController = TextEditingController();
    _alignmentController = TextEditingController();
    _paddingController = TextEditingController();
    updateCodeView(_editingController);
    super.initState();
  }

  updateCodeView(TextEditingController controller) {
    controller.text = '''
    Container(
                  key: $key,
                  alignment: $alignment,
                  padding: $padding,
                  color: $color,
                  decoration: $decoration,
                  foregroundDecoration: $foreground,
                  width: $width,
                  height: $height,
                  margin: $margin,
                  transform: $transform,
                  clipBehavior: $clip,
                  child: $child,
                ),
    ''';
    value = _editingController.text;
    setState(() {});
  }

  @override
  void dispose() {
    _editingController.dispose();
    _dialogController.dispose();
    _heightController.dispose();
    _widthController.dispose();
    _marginController.dispose();
    _paddingController.dispose();
    _alignmentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'Container Playground',
      ),
      body: Center(
        child: Container(
          padding: MyConstants.paddingAll,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  key: key,
                  alignment: alignment,
                  padding: padding,
                  color: color,
                  decoration: (color == null) ? decoration : null,
                  foregroundDecoration: foreground,
                  width: width,
                  height: height,
                  margin: margin,
                  transform: transform,
                  clipBehavior: clip,
                  child: child,
                ),
                CustomCodeView(
                  editingController: _editingController,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: (key == null) ? "Add Key" : "Remove key",
                      onPressed: () {
                        if (key == null) {
                          key = GlobalKey();
                        } else {
                          key = null;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: 'Change Color',
                      onPressed: () {
                        if (color == Colors.pinkAccent) {
                          color = Colors.blueAccent;
                        } else {
                          color = Colors.pinkAccent;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: 'Add Padding',
                      onPressed: () {
                        CustomDialogs().showInputDialog(
                            context,
                            _paddingController,
                            "Set Padding",
                            "Enter New Padding", () {
                          padding = EdgeInsets.all(
                              double.parse(_paddingController.text));
                          updateCodeView(_editingController);
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: 'Modify Foreground',
                      onPressed: () {
                        foreground = BoxDecoration(
                          color: Colors.blue,
                          //sets background-color of container
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2.2,
                          ),
                        );
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: 'Add Decoration',
                      onPressed: () {
                        decoration = BoxDecoration(
                          color: Colors.red,
                          //sets background-color of container
                          border: Border.all(
                            color: Colors.black,
                            width: 1.5,
                          ),
                        );
                        updateCodeView(_editingController);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: (child == null) ? 'Add Child' : 'Remove Child',
                      onPressed: () {
                        if (child == null) {
                          child = const Text(
                              "This is a child widget inside container");
                        } else {
                          child = null;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: 'Change Height',
                      onPressed: () {
                        CustomDialogs().showInputDialog(
                            context,
                            _heightController,
                            "Set Height",
                            "Enter New Height", () {
                          height = (_heightController.text != "null")
                              ? double.parse(_heightController.text)
                              : null;
                          updateCodeView(_editingController);
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    CustomButton(
                      title: 'Change Width',
                      onPressed: () {
                        CustomDialogs().showInputDialog(
                            context,
                            _widthController,
                            "Set Width",
                            "Enter New Width", () {
                          width = (_widthController.text != "null")
                              ? double.parse(_widthController.text)
                              : null;
                          updateCodeView(_editingController);
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: 'Add Alignment',
                      onPressed: () {},
                    ),
                    CustomButton(
                      title: (transform == null)
                          ? 'Set Transform'
                          : 'Unset Transform',
                      onPressed: () {
                        if (transform == null) {
                          transform = Matrix4.rotationZ(0.09);
                        } else {
                          transform = null;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: (margin == null) ? 'Set Margin' : 'Remove Margin',
                      onPressed: () {
                        if (margin == null) {
                          CustomDialogs().showInputDialog(
                              context,
                              _marginController,
                              "Set Margin",
                              "Enter New Height", () {
                            margin = EdgeInsets.all(
                                double.parse(_marginController.text));
                            Navigator.of(context).pop();
                          });
                        } else {
                          margin = null;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: (clip == Clip.none) ? 'Add Clip' : 'Remove Clip',
                      onPressed: () {
                        if (clip == Clip.none) {
                          clip = Clip.antiAlias;
                        } else {
                          clip = Clip.none;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: 'Reset to Defualt',
                      onPressed: () {
                        key = null;
                        child = null;
                        alignment = null;
                        height = 80.0;
                        width = 80.0;
                        padding = null;
                        margin = null;
                        color = Colors.pinkAccent;
                        foreground = null;
                        decoration = null;
                        transform = null;
                        clip = Clip.none;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
