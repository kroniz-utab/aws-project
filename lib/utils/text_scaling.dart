import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:project_aws/utils/constant.dart';

class TextScaling {
  static double _baseFactor(BuildContext context, double baseWidth,
      {double maxScaleFactor = 1.5}) {
    final width = Constant.screenWidth(context);
    double val = (width / baseWidth);
    return max(0.5, min(val, maxScaleFactor));
  }

  static double getFactorMobile(BuildContext context,
      {double maxScaleFactor = 1.5}) {
    const double baseWidth = 393;
    return _baseFactor(context, baseWidth);
  }
}
