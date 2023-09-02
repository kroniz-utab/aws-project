part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.morning(String path) = _Morning;
  const factory ThemeState.evening(String path) = _Evening;
  const factory ThemeState.night(String path) = _Night;
}
