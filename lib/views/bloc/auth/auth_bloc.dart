// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:project_aws/common/failure.dart';
import 'package:project_aws/data/entity/auth.dart';
import 'package:project_aws/data/usecase/post_auth.dart';
import 'package:project_aws/helper/preferences_helper.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PreferencesHelper prfs;
  final PostAuth postAuth;
  AuthBloc(
    this.prfs,
    this.postAuth,
  ) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      emit(const _Initial());
      if (event is _Started) {
        emit(const _Loading());

        final result = await postAuth.execute();

        result.fold((l) => emit(_Error(l)), (r) {
          prfs.setAccessToken(r.token);
          emit(_Success(r));
        });
      }
    });
  }
}
