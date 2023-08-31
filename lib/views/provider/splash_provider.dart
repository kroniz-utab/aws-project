import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_aws/utils/enum.dart';

final splashProvider = StateProvider.autoDispose<SplashStateEnum>((ref) {
  return SplashStateEnum.loading;
});

final messageProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});
