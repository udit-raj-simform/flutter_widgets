import 'package:flutter_widgets/utils/exports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.actions})
      : super(key: key);
  final String title;
  final List<Widget>? actions;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      automaticallyImplyLeading: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
