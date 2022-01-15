// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessMoviesResponse _$SuccessMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    SuccessMoviesResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => SuccessOutputData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SuccessMoviesResponseToJson(
        SuccessMoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

SuccessOutputData _$SuccessOutputDataFromJson(Map<String, dynamic> json) =>
    SuccessOutputData(
      poster_path: json['poster_path'] as String,
      adult: json['adult'] as bool,
      overview: json['overview'] as String,
      release_date: DateTime.parse(json['release_date'] as String),
      original_title: json['original_title'] as String,
      genre_ids:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      original_language: json['original_language'] as String,
      vote_average: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$SuccessOutputDataToJson(SuccessOutputData instance) =>
    <String, dynamic>{
      'poster_path': instance.poster_path,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.release_date.toIso8601String(),
      'original_title': instance.original_title,
      'genre_ids': instance.genre_ids,
      'original_language': instance.original_language,
      'vote_average': instance.vote_average,
    };
