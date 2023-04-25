import 'package:flutter_widgets/utils/exports.dart';

class BlockPickColor extends StatefulWidget {
  const BlockPickColor({Key? key, this.color, required this.onColorChanged})
      : super(key: key);
  final Color? color;
  final Function(Color) onColorChanged;

  @override
  State<BlockPickColor> createState() => _BlockPickColorState();
}

class _BlockPickColorState extends State<BlockPickColor> {
  @override
  Widget build(BuildContext context) {
    return BlockPicker(
      pickerColor: widget.color!,
      onColorChanged: widget.onColorChanged,
    );
  }
}
