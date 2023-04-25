import 'package:flutter_widgets/utils/exports.dart';

enum MyItems { home, profile, help }

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderPage> createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  MyItems? selectedItem;
  late bool isPortrait;

  toHome() => Navigator.popUntil(
        context,
        ModalRoute.withName(
          const Home().toString(),
        ),
      );

  @override
  void initState() {
    isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 600) {
        return CustomScaffold(
          appBar: CustomAppBar(
            title: "Wide Layout",
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
                onPressed: () {},
                icon: const Icon(Icons.help),
              ),
            ],
          ),
        );
      } else {
        if (isPortrait) {
          return CustomScaffold(
            appBar: CustomAppBar(
              title: "Narrow Layout",
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
                          // TODO: Handle this case.
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
        } else {
          return CustomScaffold(
            appBar: CustomAppBar(
              title: "Wide Layout",
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
                  onPressed: () {},
                  icon: const Icon(Icons.help),
                ),
              ],
            ),
          );
        }
      }
    });
  }
}
