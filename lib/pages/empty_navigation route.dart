import 'package:flutter_widgets/utils/exports.dart';

class EmptyNavigationRoute extends StatelessWidget {
  const EmptyNavigationRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'Empty Navigation Route',
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext ctx) => AlertDialog(
                actions: [
                  IconButton(
                    onPressed: () => Navigator.pop(ctx),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
          child: const Text("close"),
        ),
      ),
    );
  }
}
