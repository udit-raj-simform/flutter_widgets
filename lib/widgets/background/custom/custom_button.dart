import 'package:flutter_widgets/utils/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onPressed, required this.title})
      : super(key: key);
  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
