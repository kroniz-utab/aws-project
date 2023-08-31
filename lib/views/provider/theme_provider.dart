import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_aws/utils/enum.dart';

class ThemeNotifier extends ChangeNotifier {
  SituationEnum _state = SituationEnum.morning;

  SituationEnum get state => _state;

  change() {
    final date = DateTime.now();

    if (date.hour <= 6 || date.hour >= 19) {
      _state = SituationEnum.night;
      notifyListeners();
    } else if (date.hour >= 6 && date.hour <= 15) {
      _state = SituationEnum.morning;
      notifyListeners();
    } else {
      _state = SituationEnum.evening;
      notifyListeners();
    }
  }
}

final themeProvider =
    ChangeNotifierProvider<ThemeNotifier>((ref) => ThemeNotifier());
