import 'package:flutter_widgets/utils/exports.dart';

class SliverAppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myWidgets = <Widget>[
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              height: 300,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            elevation: 0.0,
            automaticallyImplyLeading: true,
            expandedHeight: 250,
            stretch: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/my_dog.jpeg"),
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              title: const Text("SliverAppBar"),
              centerTitle: true,
            ),
          ),
          myWidgets.elementAt(0),
          myWidgets.elementAt(0),
          myWidgets.elementAt(0),
          myWidgets.elementAt(0),
          myWidgets.elementAt(0),
          myWidgets.elementAt(0),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
