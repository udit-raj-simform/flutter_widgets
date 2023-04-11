import 'package:flutter_widgets/utils/exports.dart';

class CustomCodeView extends StatefulWidget {
  const CustomCodeView({Key? key, required this.editingController})
      : super(key: key);
  final TextEditingController editingController;

  @override
  State<CustomCodeView> createState() => _CustomCodeViewState();
}

class _CustomCodeViewState extends State<CustomCodeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyConstants.width,
      padding: MyConstants.paddingAll,
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: MyConstants.borderRadius,
      ),
      child: TextField(
          controller: widget.editingController,
          enabled: false,
          autofocus: false,
          textInputAction: TextInputAction.newline,
          autocorrect: false,
          textAlign: TextAlign.left,
          style: const TextStyle(fontFamily: 'Consolas', color: Colors.black87),
          maxLines: null,
          decoration: const InputDecoration.collapsed(hintText: "")
          // maxLines: null,
          ),
    );
  }
}
