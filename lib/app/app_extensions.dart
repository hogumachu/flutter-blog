import 'package:flutter/material.dart';
import 'package:flutter_blog/app/form_factor.dart';
import 'package:flutter_blog/app/size/app_inset.dart';
import 'package:flutter_blog/app/text_style/app_text_style.dart';
import 'package:flutter_blog/app/text_style/desktop_text_style.dart';
import 'package:flutter_blog/app/text_style/mobile_text_style.dart';
import 'package:flutter_blog/app/text_style/tablet_text_style.dart';

extension StyledContext on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;

  FormFactor get formFactor {
    if (width < 600) return FormFactor.mobile;
    if (width < 900) return FormFactor.tablet;
    return FormFactor.desktop;
  }

  AppTextStyle get textStyle {
    switch (formFactor) {
      case FormFactor.mobile:
        return MobileTextStyle();
      case FormFactor.tablet:
        return TabletTextStyle();
      case FormFactor.desktop:
        return DesktopTextStyle();
    }
  }

  AppInset get inset {
    switch (formFactor) {
      case FormFactor.mobile:
        return MobileInset();
      case FormFactor.tablet:
        return TabletInset();
      case FormFactor.desktop:
        return DesktopInset();
    }
  }
}
