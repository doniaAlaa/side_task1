// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesOutputModel _$MoviesOutputModelFromJson(Map<String, dynamic> json) =>
    MoviesOutputModel(
      json['id'] as int?,
      (json['result'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesOutputModelToJson(MoviesOutputModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: json['id'] as int?,
      posterPath: json['posterPath'] as String,
      overview: json['overview'] as String,
      adult: json['adult'] as bool,
      ids: (json['ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'posterPath': instance.posterPath,
      'overview': instance.overview,
      'adult': instance.adult,
      'ids': instance.ids,
    };
