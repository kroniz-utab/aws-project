import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const _Morning('assets/img/Sun.png')) {
    on<ThemeEvent>((event, emit) {
      event.map(
        change: (value) {
          final date = DateTime.now();

          if (date.hour <= 6 || date.hour >= 19) {
            emit(const _Night('assets/img/Blood.png'));
          } else if (date.hour >= 6 && date.hour <= 15) {
            emit(const _Morning('assets/img/Sun.png'));
          } else {
            emit(const _Evening('assets/img/Moon.png'));
          }
        },
      );
    });
  }
}
