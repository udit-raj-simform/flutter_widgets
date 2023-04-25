import 'dart:async';

import 'package:flutter_widgets/utils/exports.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  double bitcoin = 1500000.67;

  late final StreamController<double> _controller;
  late final Stream<double> _stream;

  @override
  void initState() {
    _controller = StreamController<double>();
    _stream = _controller.stream.asBroadcastStream();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Stream Builder"),
      body: Center(
        child: Container(
          margin: MyConstants.marginSym,
          height: 300,
          width: 300,
          child: SizedBox(
            height: 300,
            child: GlassMorphicBackground(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder(
                    // initialData: bitcoin,
                    stream: _stream,
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          bitcoin.toString(),
                          style: const TextStyle(color: Colors.green),
                        );
                      } else {
                        return Text(
                          bitcoin.toString(),
                          style: const TextStyle(color: Colors.red),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      bitcoin = bitcoin * 1.0000515246639;
                      _controller.add(bitcoin);
                    },
                    child: const Text("Updated Price"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
