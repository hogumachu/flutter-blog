import 'package:flutter/material.dart';
import 'package:flutter_blog/app/form_factor.dart';

extension StyledContext on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  ThemeData get theme => Theme.of(this);
  FormFactor get formFactor {
    if (width < 600) return FormFactor.mobile;
    if (width < 900) return FormFactor.tablet;
    return FormFactor.desktop;
  }
}
