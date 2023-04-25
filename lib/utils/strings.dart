mixin MyStrings {
  static const String bottomNavigationBarFixed =
  '''BottomNavigationBarType.fixed, the default when there are less than four items. The selected item is rendered with the selectedItemColor if it's non-null, otherwise the theme's ColorScheme.primary color is used for Brightness.light themes and ColorScheme.secondary for Brightness.dark themes. If backgroundColor is null, The navigation bar's background color defaults to the Material background color, ThemeData.canvasColor (essentially opaque white).''';

  static const String bottomNavigationBarShifting =
  '''BottomNavigationBarType.shifting, the default when there are four or more items. If selectedItemColor is null, all items are rendered in white. The navigation bar's background color is the same as the BottomNavigationBarItem.backgroundColor of the selected item. In this case it's assumed that each item will have a different background color and that background color will contrast well with white.''';

}
