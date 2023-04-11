import 'package:flutter/services.dart';
import 'package:flutter_widgets/tabs/calls_tab.dart';
import 'package:flutter_widgets/tabs/stories_tab.dart';
import 'package:flutter_widgets/utils/exports.dart';

import '../../tabs/messages_tab.dart';

enum MyItems { sliverAppbar, appBar, revertScreen }

class AppBarWithTabBar extends StatefulWidget {
  const AppBarWithTabBar({Key? key}) : super(key: key);

  @override
  State<AppBarWithTabBar> createState() => _AppBarWithTabBarState();
}

class _AppBarWithTabBarState extends State<AppBarWithTabBar> {
  MyItems? selectedItem;
  bool isSearchActive = false;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.black,
            scrolledUnderElevation: 3.0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            notificationPredicate: (ScrollNotification notification) {
              return notification.depth == 1;
            },
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.restaurant_menu_rounded)),
            title: (isSearchActive)
                ? mySearchWidget(_controller)
                : myTitleWidget(),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                ),
                onPressed: () {
                  setState(() {
                    isSearchActive = (!isSearchActive);
                    debugPrint("isSearchActive: ${isSearchActive.toString()}");
                  });
                },
              ),
              PopupMenuButton<MyItems>(
                initialValue: selectedItem,
                splashRadius: 10.0,
                onSelected: (MyItems item) {
                  setState(() {
                    selectedItem = item;
                    switch (selectedItem) {
                      case MyItems.sliverAppbar:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SliverAppBarPage(),
                          ),
                        );

                        break;
                      case MyItems.appBar:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppBarPage(),
                          ),
                        );
                        break;
                      case MyItems.revertScreen:
                        Navigator.pop(context);
                        break;
                      default:
                        return;
                    }
                  });
                },
                itemBuilder: (BuildContext buildContext) =>
                    <PopupMenuEntry<MyItems>>[
                  const PopupMenuItem<MyItems>(
                    value: MyItems.sliverAppbar,
                    child: Text('Sliver'),
                  ),
                  const PopupMenuItem<MyItems>(
                    value: MyItems.appBar,
                    child: Text('AppBar'),
                  ),
                  const PopupMenuItem<MyItems>(
                    value: MyItems.revertScreen,
                    child: Text('GO Back'),
                  ),
                ],
              )
            ],
            bottom: TabBar(
                indicatorColor: Colors.white,
                splashFactory: NoSplash.splashFactory,
                // removes inkHighlight
                indicatorWeight: 3.0,
                enableFeedback: true,
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                splashBorderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(MyConstants.width, 100)),
                dividerColor: Colors.transparent,
                unselectedLabelColor: Colors.white,
                labelColor: Colors.red,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(
                    text: "Messages",
                  ),
                  Tab(
                    text: "Stories",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ])),
        body: const TabBarView(
          children: [
            MyMessagesTab(),
            MyStoriesTab(),
            MyCallsTab(),
          ],
        ),
      ),
    );
  }
}

doNothing() {
  return;
}

Widget mySearchWidget(TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Colors.transparent,
        width: double.maxFinite,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                  controller: controller,
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontFamily: 'monospace')),
            ),
            const Icon(Icons.search_rounded),
          ],
        ),
      ),
    ),
  );
}

Widget myTitleWidget() {
  return const Text(
    "Basic Widgets and Layout",
    style: TextStyle(fontSize: 15),
  );
}
