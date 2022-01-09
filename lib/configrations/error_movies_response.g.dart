// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorMoviesResponse _$ErrorMoviesResponseFromJson(Map<String, dynamic> json) =>
    ErrorMoviesResponse(
      status_message: json['status_message'] as String,
      success: json['success'] as bool? ?? false,
      status_code: json['status_code'] as int,
    );

Map<String, dynamic> _$ErrorMoviesResponseToJson(
        ErrorMoviesResponse instance) =>
    <String, dynamic>{
      'status_message': instance.status_message,
      'success': instance.success,
      'status_code': instance.status_code,
    };
