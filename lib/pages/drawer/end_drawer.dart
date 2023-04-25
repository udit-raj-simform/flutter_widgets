import 'package:flutter_widgets/utils/exports.dart';

class EndDrawerPage extends StatefulWidget {
  const EndDrawerPage({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<EndDrawerPage> createState() => _EndDrawerPageState();
}

class _EndDrawerPageState extends State<EndDrawerPage> {
  late Image myImage;
  final TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontFamily: GoogleFonts.akronim().toString(),
      fontWeight: FontWeight.bold,
      fontSize: 18.0);
  final TextStyle subtitleStyle = TextStyle(
      color: Colors.grey,
      fontFamily: GoogleFonts.sansita().toString(),
      fontWeight: FontWeight.bold,
      fontSize: 12.0);
  bool isDrawerOpen = false;

  @override
  void initState() {
    myImage = Image.network(widget.url);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'Drawer',
      ),
      onEndDrawerChanged: (isOpen) {
        setState(() {
          isDrawerOpen = isOpen;
        });
      },
      endDrawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shadowColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            myImage,
            DrawerItemWidget(
              title: "Home",
              iconData: Icons.home,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            DrawerItemWidget(
              title: "AppBar",
              iconData: Icons.view_headline,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AppBarPage()));
              },
            ),
            DrawerItemWidget(
              title: "Scaffold",
              iconData: Icons.import_contacts,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScaffoldPage()));
              },
            ),
            DrawerItemWidget(
              title: "BottomNavigationBar",
              iconData: Icons.navigation_sharp,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavigationBarPage()));
              },
            ),
            DrawerItemWidget(
              title: "Return",
              iconData: Icons.arrow_back_ios,
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            const SimpleDrawerDivider(),
            const Expanded(child: SizedBox()),
            const SimpleDrawerDivider(),
            DrawerItemWidget(
              title: "Close",
              iconData: Icons.close,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext context) => MaterialButton(
            onPressed: () => (isDrawerOpen)
                ? Scaffold.of(context).closeEndDrawer()
                : Scaffold.of(context).openEndDrawer(),
            child: const Text("Toggle End Drawer"),
          ),
        ),
      ),
    );
  }
}
