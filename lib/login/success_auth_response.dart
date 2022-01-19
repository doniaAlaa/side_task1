import 'package:json_annotation/json_annotation.dart';
part 'success_auth_response.g.dart';

@JsonSerializable()
class SuccessAuthResponse {
  final bool success;
  final String expires_at;
  final String request_token;

  SuccessAuthResponse({
    required this.success,
    required this.expires_at,
    required this.request_token,
  });

  factory SuccessAuthResponse.fromJson(Map<String, dynamic> json) => _$SuccessAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessAuthResponseToJson(this);
}
