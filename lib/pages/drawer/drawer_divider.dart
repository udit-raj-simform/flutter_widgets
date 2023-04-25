import 'package:flutter_widgets/utils/exports.dart';

class SimpleDrawerDivider extends StatelessWidget {
  const SimpleDrawerDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10,
      thickness: 1,
      color: Colors.black26,
    );
  }
}
