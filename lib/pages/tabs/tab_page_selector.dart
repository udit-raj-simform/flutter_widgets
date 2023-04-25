import 'package:flutter_widgets/utils/exports.dart';

class TabPageSelectorPage extends StatefulWidget {
  const TabPageSelectorPage({Key? key}) : super(key: key);

  @override
  State<TabPageSelectorPage> createState() => _TabPageSelectorPageState();
}

class _TabPageSelectorPageState extends State<TabPageSelectorPage>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  late final TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: 8, initialIndex: _index, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "TabPageSelector"),
      floatingActionButton: TabPageSelector(
        controller: _tabController,
        color: Colors.white,
        selectedColor: Colors.blue,
        indicatorSize: 16.0,
      ),
      body: Center(
        child: Container(
          margin: MyConstants.marginSym,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    (_index > 0) ? _index -= 1 : _index = 7;
                    _tabController.animateTo(_index);
                  });
                },
                alignment: Alignment.center,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35.0,
                  color: Colors.blueGrey,
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) => GlassMorphicBackground(
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black26, width: 1.7),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        height: 200,
                        width: 200,
                        child: Image.asset("assets/tb_image/an_$_index.jpeg"),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    (_index < 7) ? _index += 1 : _index = 0;
                    _tabController.animateTo(_index);
                  });
                },
                alignment: Alignment.center,
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35.0,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
