import 'package:flutter_widgets/utils/exports.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {Key? key,
      this.appBar,
      this.body,
      this.drawer,
      this.endDrawer,
      this.onDrawerChanged,
      this.onEndDrawerChanged,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.bottomSheet})
      : super(key: key);
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;
  final Widget? endDrawer;
  final Function(bool)? onDrawerChanged;
  final Function(bool)? onEndDrawerChanged;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Widget? bottomSheet;

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
        onDrawerChanged: onDrawerChanged,
        onEndDrawerChanged: onEndDrawerChanged,
        drawer: drawer,
        endDrawer: endDrawer,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomSheet: bottomSheet,
      ),
    );
  }
}
