import 'package:flutter_widgets/utils/exports.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Key? key;
  Widget? child;
  AlignmentGeometry? alignment;
  Color? color = Colors.blue;
  double? height = 100.0;
  double? width = 100.0;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  Decoration? decoration;
  Decoration? foreground;
  Matrix4? transform;
  Clip clip = Clip.none;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        title: 'Animated Container',
      ),
      body: Center(
        child: Padding(
          padding: MyConstants.paddingSym,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  key: key,
                  alignment: alignment,
                  padding: padding,
                  color: color,
                  decoration: (color == null) ? decoration : null,
                  foregroundDecoration: foreground,
                  width: width,
                  height: height,
                  margin: margin,
                  transform: transform,
                  clipBehavior: clip,
                  child: child,
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: const [
                    CustomButton(title: "Fade Animation"),
                    CustomButton(title: "Roll Animation"),
                    CustomButton(title: "Scale Animation"),
                    CustomButton(title: "Slide Animation"),
                    CustomButton(title: "Physical Animation"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
