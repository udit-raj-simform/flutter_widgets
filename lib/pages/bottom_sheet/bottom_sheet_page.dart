import 'package:flutter_widgets/utils/exports.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "BottomSheetDialog"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
          child: Center(
            child: ElevatedButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => Wrap(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                    ListTile(
                      leading: Icon(Icons.copy),
                      title: Text('Copy Link'),
                    ),
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit'),
                    ),
                  ],
                ),
              ),
              child: const Text("Open BottomSheet"),
            ),
          ),
        ),
      ),
    );
  }
}
