import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_aws/data/entity/auth.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@Freezed(toJson: false, fromJson: true)
class AuthModels with _$AuthModels {
  const AuthModels._();

  factory AuthModels({
    required String status,
    required String token,
  }) = _AuthModels;

  factory AuthModels.fromJson(Map<String, dynamic> json) =>
      _$AuthModelsFromJson(json);

  Auth toEntity() {
    return Auth(status: status, token: token);
  }
}
