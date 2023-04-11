import 'package:flutter_widgets/utils/exports.dart';

mixin MyConstants {
  static final width =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
  static final height =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
  static final size =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  static const paddingAll = EdgeInsets.all(10.0);
  static const paddingSym = EdgeInsets.symmetric(horizontal: 10, vertical: 20);
  static const marginAll = EdgeInsets.all(10.0);
  static const marginSym = EdgeInsets.symmetric(horizontal: 10, vertical: 20);
  static const borderRadius = BorderRadius.all(Radius.circular(25));
}
