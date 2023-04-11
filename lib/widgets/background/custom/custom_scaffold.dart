import 'package:flutter_widgets/utils/exports.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key, this.appBar, this.body, this.drawer})
      : super(key: key);
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
