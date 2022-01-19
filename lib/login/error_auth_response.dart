import 'package:json_annotation/json_annotation.dart';
part 'error_auth_response.g.dart';

@JsonSerializable()
class ErrorAuthResponse {
  final String status_message;
  final int status_code;

  ErrorAuthResponse({required this.status_message, required this.status_code});

  factory ErrorAuthResponse.fromJson(Map<String, dynamic> json) => _$ErrorAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorAuthResponseToJson(this);
}
