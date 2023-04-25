import 'package:flutter_widgets/utils/exports.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final TextEditingController _textEditingController;
  Key? key;
  FocusNode? focusNode;
  InputDecoration? decoration = const InputDecoration();
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  TextCapitalization textCapitalization = TextCapitalization.none;
  TextStyle? style;
  TextAlign textAlign = TextAlign.start;
  TextDirection? textDirection;
  bool readOnly = false;
  bool autofocus = false;
  bool autocorrect = false;
  bool obscureText = false;
  int? maxLines = 1;
  Function()? onTap;
  Function(String)? onChanged;
  Clip clipBehavior = Clip.none;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    updateCodeView(_textEditingController);
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  updateCodeView(TextEditingController controller) {
    controller.text = '''
    TextField(
                  key: $key,
                  controller: _textEditingController,
                  focusNode: $focusNode,
                  decoration: $decoration,
                  keyboardType: $keyboardType,
                  textInputAction: $textInputAction,
                  textCapitalization: $textCapitalization,
                  style: $style,
                  textAlign: $textAlign,
                  textDirection: $textDirection,
                  readOnly: $readOnly,
                  autofocus: $autofocus,
                  autocorrect: $autocorrect,
                  obscuringCharacter: '*',
                  obscureText: $obscureText,
                  maxLines: $maxLines,
                  onTap: $onTap,
                  onChanged: $onChanged,
                  clipBehavior: $clipBehavior,
                ),
    ''';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'TextField',
      ),
      body: Center(
        child: Padding(
          padding: MyConstants.paddingSym,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  key: key,
                  controller: _textEditingController,
                  focusNode: focusNode,
                  decoration: decoration,
                  keyboardType: keyboardType,
                  textInputAction: textInputAction,
                  textCapitalization: textCapitalization,
                  style: style,
                  textAlign: textAlign,
                  textDirection: textDirection,
                  readOnly: readOnly,
                  autofocus: autofocus,
                  autocorrect: autocorrect,
                  obscuringCharacter: '*',
                  obscureText: obscureText,
                  maxLines: maxLines,
                  onTap: onTap,
                  onChanged: onChanged,
                  clipBehavior: clipBehavior,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomCodeView(
                  editingController: _textEditingController,
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
