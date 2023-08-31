// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  final String status;
  final String token;

  const Auth({
    required this.status,
    required this.token,
  });

  @override
  List<Object?> get props => [status, token];
}
