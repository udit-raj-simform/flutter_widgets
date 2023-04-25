import 'package:flutter_widgets/utils/exports.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {Key? key,
      required this.title,
      this.textStyle,
      required this.iconData,
      required this.onTap})
      : super(key: key);
  final String title;
  final TextStyle? textStyle;
  final IconData iconData;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
        color: Colors.white,
        fontFamily: GoogleFonts.akronim().toString(),
        fontWeight: FontWeight.bold,
        fontSize: 18.0);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: ListTile(
          title: Text(title, style: textStyle ?? style),
          leading: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}
