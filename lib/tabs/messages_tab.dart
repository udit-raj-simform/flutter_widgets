import 'package:flutter/material.dart';

class MyMessagesTab extends StatefulWidget {
  const MyMessagesTab({Key? key}) : super(key: key);

  @override
  State<MyMessagesTab> createState() => _MyMessagesTabState();
}

class _MyMessagesTabState extends State<MyMessagesTab>
    with AutomaticKeepAliveClientMixin {
  late final ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    List myWidgets = <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            height: 300,
            color: Colors.black38,
          ),
        ),
      ),
    ];

    return ListView(
      controller: scrollController,
      scrollDirection: Axis.vertical,
      reverse: false,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      children: [
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
        myWidgets.first,
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
