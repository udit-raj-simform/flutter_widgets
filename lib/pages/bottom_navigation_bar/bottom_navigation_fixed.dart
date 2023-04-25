import 'package:flutter_widgets/utils/exports.dart';

class BottomNavigationBarFixedPage extends StatefulWidget {
  const BottomNavigationBarFixedPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarFixedPage> createState() =>
      _BottomNavigationBarFixedPageState();
}

class _BottomNavigationBarFixedPageState
    extends State<BottomNavigationBarFixedPage> {
  Color? backgroundColor;
  Color? selectedItemColor;
  Color? unselectedItemColor;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void didChangeDependencies() {
    backgroundColor = Theme.of(context).colorScheme.secondary;
    selectedItemColor = Colors.blue;
    unselectedItemColor = Colors.blueGrey;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'Container Playground',
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )),
        child: BottomNavigationBar(
          // mouseCursor: MouseCursor.uncontrolled,
          backgroundColor: backgroundColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          onTap: _onItemTapped,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                width: MyConstants.width,
                padding: MyConstants.paddingAll,
                margin: MyConstants.marginSym,
                child: const Text(
                  MyStrings.bottomNavigationBarFixed,
                  style: TextStyle(fontFamily: 'monospace'),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  backgroundColor = null;
                  selectedItemColor = null;
                  unselectedItemColor = null;
                });
              },
              child: const Text("Reset to Default"),
            ),
          ],
        ),
      ),
    );
  }
}
