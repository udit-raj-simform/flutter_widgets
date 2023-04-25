import 'package:flutter_widgets/utils/exports.dart';

class SliderPickColor extends StatefulWidget {
  const SliderPickColor({Key? key, this.color, required this.onColorChanged})
      : super(key: key);
  final Color? color;
  final Function(Color) onColorChanged;

  @override
  State<SliderPickColor> createState() => _SliderPickColorState();
}

class _SliderPickColorState extends State<SliderPickColor> {
  @override
  Widget build(BuildContext context) {
    return SlidePicker(
      pickerColor: widget.color!,
      onColorChanged: widget.onColorChanged,
    );
  }
}
