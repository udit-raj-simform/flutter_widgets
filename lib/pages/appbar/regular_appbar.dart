import 'package:flutter_widgets/utils/exports.dart';

class RegularAppBarPage extends StatefulWidget {
  const RegularAppBarPage({Key? key}) : super(key: key);

  @override
  State<RegularAppBarPage> createState() => _RegularAppBarPageState();
}

class _RegularAppBarPageState extends State<RegularAppBarPage> {
  late final TextEditingController _editingController;
  late final TextEditingController _dialogController;
  late final TextEditingController _titleController;

  String value = "";

  Key? key;
  Widget? leading;
  bool automaticallyImplyLeading = true;
  Color? color = Colors.lightGreenAccent;
  Color? foreground = Colors.black;
  double height = 56.0;
  double opacity = 1.0;
  String title = "AppBar";
  List<Widget>? actions = [];

  @override
  void initState() {
    _editingController = TextEditingController();
    _dialogController = TextEditingController();
    _titleController = TextEditingController();
    updateCodeView(_editingController);
    super.initState();
  }

  updateCodeView(TextEditingController controller) {
    controller.text = '''
    AppBar(
                  key: $key,
                  leading: $leading,
                  automaticallyImplyLeading: $automaticallyImplyLeading,
                  title: Text($title),
                  backgroundColor: $color,
                  foregroundColor: $foreground,
                  shadowColor: Colors.black87,
                  toolbarHeight: $height,
                  toolbarOpacity: $opacity,
                  actions: $actions,
                ),
    ''';
    value = _editingController.text;
    setState(() {});
  }

  @override
  void dispose() {
    _editingController.dispose();
    _dialogController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'Regular AppBar',
      ),
      body: Center(
        child: Container(
          padding: MyConstants.paddingAll,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  key: key,
                  leading: leading,
                  automaticallyImplyLeading: automaticallyImplyLeading,
                  title: Text(title),
                  backgroundColor: color,
                  foregroundColor: foreground,
                  shadowColor: Colors.black87,
                  toolbarHeight: height,
                  toolbarOpacity: opacity,
                  actions: actions,
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
                      title: (automaticallyImplyLeading == true)
                          ? "Remove Default Leading"
                          : "Apply Default Leading",
                      onPressed: () {
                        if (automaticallyImplyLeading) {
                          automaticallyImplyLeading = false;
                        } else {
                          automaticallyImplyLeading = true;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: (leading == null)
                          ? "Add New Leading"
                          : "Remove New Leading",
                      onPressed: () {
                        if (leading == null) {
                          leading = const Icon(Icons.menu_rounded);
                        } else {
                          leading = null;
                        }
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
                      title: "Change height",
                      onPressed: () {
                        CustomDialogs().showInputDialog(
                            context,
                            _dialogController,
                            "Set Height",
                            "Enter New Height", () {
                          height = double.parse(_dialogController.text);
                          updateCodeView(_editingController);
                          _dialogController.text = "";
                          Navigator.pop(context);
                        });
                      },
                    ),
                    CustomButton(
                      title: (actions!.toList().isEmpty)
                          ? "Add actions"
                          : "Hide Actions",
                      onPressed: () {
                        if (actions!.toList().isEmpty) {
                          actions!.addAll([
                            const Icon(Icons.settings),
                            const SizedBox(
                              width: 25,
                            )
                          ]);
                        } else {
                          actions!.clear();
                        }
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
                      title: "Change background",
                      onPressed: () {
                        CustomColorPicker().pickColor(
                          context,
                          color,
                          BuildPickColor(
                            color: color,
                            onColorChanged: (color) => setState(
                              () => this.color = color,
                            ),
                          ),
                        );
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: "Change foreground color",
                      onPressed: () {
                        CustomColorPicker().pickColor(
                          context,
                          foreground,
                          BlockPickColor(
                            color: foreground,
                            onColorChanged: (color) => setState(
                              () => foreground = color,
                            ),
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
                      title: opacity == 1 ? "Hide toolkit" : "Show toolkit",
                      onPressed: () {
                        if (opacity == 1) {
                          opacity = 0;
                        } else {
                          opacity = 1;
                        }
                        updateCodeView(_editingController);
                      },
                    ),
                    CustomButton(
                      title: "Change title",
                      onPressed: () {
                        CustomDialogs().showInputDialog(
                            context,
                            _titleController,
                            "Set Title",
                            "Enter New Title", () {
                          title = _titleController.text;
                          updateCodeView(_editingController);
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    CustomButton(
                      title: "Reset to default",
                      onPressed: () {
                        key = null;
                        leading = null;
                        title = "AppBar";
                        height = 56;
                        opacity = 1;
                        color = Colors.lightGreenAccent;
                        foreground = Colors.black;
                        automaticallyImplyLeading = true;
                        actions!.clear();
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
