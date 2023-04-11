import 'package:flutter/services.dart';
import 'package:flutter_widgets/utils/exports.dart';

class AppBarWithImage extends StatefulWidget {
  const AppBarWithImage({Key? key}) : super(key: key);

  @override
  State<AppBarWithImage> createState() => _AppBarWithImageState();
}

class _AppBarWithImageState extends State<AppBarWithImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      drawer: Drawer(
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
      appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          excludeHeaderSemantics: true,
          toolbarHeight: 100,
          leadingWidth: 50,
          toolbarOpacity: 1,
          automaticallyImplyLeading: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                debugPrint("leading button working");
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          flexibleSpace: const Image(
            image: AssetImage('assets/images/my_dog.jpeg'),
            fit: BoxFit.cover,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: const Text(
                "Custom Widget",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          )),
    );
  }
}
