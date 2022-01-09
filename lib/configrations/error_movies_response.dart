import 'package:json_annotation/json_annotation.dart';
part 'error_movies_response.g.dart';

@JsonSerializable()
class ErrorMoviesResponse {
  final String status_message;
  late final bool success;
  final int status_code;

  ErrorMoviesResponse({required this.status_message, this.success = false, required this.status_code});

  factory ErrorMoviesResponse.fromJson(Map<String, dynamic> json) => _$ErrorMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorMoviesResponseToJson(this);
}
