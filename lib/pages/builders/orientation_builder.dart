import 'package:flutter_widgets/pages/empty_navigation%20route.dart';
import 'package:flutter_widgets/utils/exports.dart';

enum MyItems { home, profile, help }

class OrientationBuilderPage extends StatefulWidget {
  const OrientationBuilderPage({Key? key}) : super(key: key);

  @override
  State<OrientationBuilderPage> createState() => _OrientationBuilderPageState();
}

class _OrientationBuilderPageState extends State<OrientationBuilderPage> {
  MyItems? selectedItem;

  toHome() => Navigator.popUntil(
        context,
        ModalRoute.withName(
          const Home().toString(),
        ),
      );

  toEmptyRoute() => Navigator.push(context,
      MaterialPageRoute(builder: (context) => const EmptyNavigationRoute()));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          return CustomScaffold(
            appBar: CustomAppBar(
              title: "Landscape Orientation",
              actions: [
                IconButton(
                  onPressed: () => toHome(),
                  icon: const Icon(Icons.home_max),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_rounded),
                ),
                IconButton(
                  onPressed: () => toEmptyRoute(),
                  icon: const Icon(Icons.help),
                ),
              ],
            ),
          );
        } else {
          return CustomScaffold(
            appBar: CustomAppBar(
              title: "Portrait Orientation",
              actions: [
                PopupMenuButton<MyItems>(
                  initialValue: selectedItem,
                  icon: const Icon(Icons.settings),
                  onSelected: (MyItems item) {
                    setState(() {
                      selectedItem = item;
                      switch (item) {
                        case MyItems.home:
                          toHome();
                          break;
                        case MyItems.profile:
                          // TODO: Handle this case.
                          break;
                        case MyItems.help:
                          toEmptyRoute();
                          break;
                      }
                    });
                  },
                  itemBuilder: (BuildContext buildContext) =>
                      <PopupMenuEntry<MyItems>>[
                    const PopupMenuItem(
                      value: MyItems.home,
                      child: Text("Home"),
                    ),
                    const PopupMenuItem(
                      value: MyItems.profile,
                      child: Text("Profile"),
                    ),
                    const PopupMenuItem(
                      value: MyItems.help,
                      child: Text("Help"),
                    ),
                  ],
                )
              ],
            ),
          );
        }
      },
    );
  }
}
