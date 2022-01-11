// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_request_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMovieRequestInputModel _$GetMovieRequestInputModelFromJson(
        Map<String, dynamic> json) =>
    GetMovieRequestInputModel(
      requestId: json['requestId'] as String?,
      pageNumber: json['pageNumber'] as int?,
    );

Map<String, dynamic> _$GetMovieRequestInputModelToJson(
        GetMovieRequestInputModel instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'pageNumber': instance.pageNumber,
    };
