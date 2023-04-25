import 'package:flutter_widgets/utils/exports.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({Key? key}) : super(key: key);

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late VoidCallback _showPersistentBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersistentBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersistentBottomSheetCallBack;
    });

    scaffoldKey.currentState
        ?.showBottomSheet((context) {
          return Container(
            height: 200.0,
            color: Colors.teal[100],
            child: const Center(
              child: Text(
                "Drag Downwards Or Back To Dismiss Sheet",
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersistentBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: const CustomAppBar(title: "Scaffold Widget"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showPersistentBottomSheetCallBack;
        },
        label: const Text("FAB"),
        icon: const Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Theme.of(context).colorScheme.primary,
        elevation: 2,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Image.asset("assets/images/my_dog.jpeg"),
            ),
            Container(
              padding: MyConstants.paddingSym,
              margin: MyConstants.marginSym,
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Row(
                  children: const [
                    SizedBox(width: 20),
                    Icon(Icons.arrow_back_ios),
                    Text("Return to Menu"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_rounded,
              ),
              label: "Profile"),
        ],
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                'semi transparent bottom sheet :)',
                style: TextStyle(color: Colors.white),
              )));
        },
      ),
    );
  }
}
