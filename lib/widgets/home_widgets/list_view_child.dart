import 'package:flutter_widgets/utils/exports.dart';

class ListViewChildHome extends StatelessWidget {
  const ListViewChildHome(
      {super.key, required this.widgetName, required this.path});

  final String widgetName;
  final Widget path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => path,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.3),
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(80),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          border: Border.all(
            width: 1.5,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        width: MyConstants.width,
        height: MyConstants.height / 12,
        padding: MyConstants.paddingSym,
        margin: MyConstants.marginSym,
        alignment: Alignment.center,
        child: Text(
          widgetName.toString().trim(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
