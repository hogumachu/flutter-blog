class ConstantInset {
  static double get xs => 4;
  static double get s => 8;
  static double get m => 12;
  static double get l => 18;
  static double get xl => 24;
  static double get xxl => 80;
  static const double maxWidth = 1280;
}

typedef MobileInset = SmallInset;
typedef TabletInset = LargeInset;
typedef DesktopInset = LargeInset;

abstract class AppInset {
  double get padding;
  double get appBarHeight;
}

class SmallInset extends AppInset {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 56;
}

class LargeInset extends AppInset {
  @override
  double get padding => 80;

  @override
  double get appBarHeight => 64;
}
