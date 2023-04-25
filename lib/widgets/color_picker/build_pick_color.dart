import 'package:flutter_widgets/utils/exports.dart';

class BuildPickColor extends StatefulWidget {
  const BuildPickColor({Key? key, this.color, required this.onColorChanged})
      : super(key: key);
  final Color? color;
  final Function(Color) onColorChanged;

  @override
  State<BuildPickColor> createState() => _BuildPickColorState();
}

class _BuildPickColorState extends State<BuildPickColor> {
  @override
  Widget build(BuildContext context) {
    return ColorPicker(
      pickerColor: widget.color!,
      onColorChanged: widget.onColorChanged,
    );
  }
}
