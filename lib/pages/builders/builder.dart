import 'package:flutter_widgets/utils/exports.dart';

class BuilderPage extends StatefulWidget {
  const BuilderPage({Key? key}) : super(key: key);

  @override
  State<BuilderPage> createState() => _BuilderPageState();
}

class _BuilderPageState extends State<BuilderPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Stream Builder"),
      endDrawer: const Drawer(),
      body: Center(
        child: Container(
          margin: MyConstants.marginSym,
          height: 300,
          width: 400,
          child: SizedBox(
            height: 300,
            child: GlassMorphicBackground(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      try {
                        Scaffold.of(context).openDrawer();
                      } catch (e) {
                        showDialog(
                          context: context,
                          builder: (context) => mySimpleDialog(e),
                        );
                      }
                    },
                    child: const Text("Open End Drawer"),
                  ),
                  Builder(
                    builder: (BuildContext context) => ElevatedButton(
                      onPressed: () {
                        try {
                          Scaffold.of(context).openEndDrawer();
                        } catch (e) {
                          showDialog(
                            context: context,
                            builder: (context) => mySimpleDialog(e),
                          );
                        }
                      },
                      child: const Text("Open End Drawer"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget mySimpleDialog(e) => SimpleDialog(
        alignment: Alignment.center,
        title: const Text(
          "An Error Occurred",
          style: TextStyle(color: Colors.white),
        ),
        children: [
          Container(
            width: 400,
            padding: MyConstants.paddingSym,
            margin: MyConstants.marginSym,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        e.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Close",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                )
              ],
            ),
          ),
        ],
      );
}
