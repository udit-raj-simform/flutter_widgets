import 'package:flutter_widgets/utils/exports.dart';

class BottomSheetDialogWidget extends StatelessWidget {
  const BottomSheetDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: MyConstants.paddingAll,
      margin: (MyConstants.height <= 800)
          ? const EdgeInsets.all(5.0)
          : MyConstants.marginSym,
      decoration: BoxDecoration(
          color: Theme
              .of(context)
              .colorScheme
              .primaryContainer,
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Flexible(
                  child: Text(
                    "Sign In as...",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w400,
                      height: 1.1,
                      fontFamily: 'Times New roman',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),

            const SizedBox(
              height: 8.0,
            ),

            const SizedBox(
              height: 7.0,
            ),
            Flexible(
              child: Divider(
                thickness: 2.0,
                indent: MyConstants.width / 4.0,
                endIndent: MyConstants.width / 4.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "or login using social media",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
