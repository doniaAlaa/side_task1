import 'package:json_annotation/json_annotation.dart';
part 'success_movies_response.g.dart';

@JsonSerializable()
class SuccessMoviesResponse {
  final int page;
  final List<SuccessOutputData> results;

  SuccessMoviesResponse({required this.page, required this.results});

  factory SuccessMoviesResponse.fromJson(Map<String, dynamic> json) => _$SuccessMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessMoviesResponseToJson(this);
}

@JsonSerializable()
class SuccessOutputData {
  final String poster_path;
  final bool adult;
  final String overview;
  final DateTime release_date;
  final String original_title;
  final List<int> genre_ids;
  final String original_language;
  final double vote_average;

  SuccessOutputData(
      {required this.poster_path,
      required this.adult,
      required this.overview,
      required this.release_date,
      required this.original_title,
      required this.genre_ids,
      required this.original_language,
      required this.vote_average});

  factory SuccessOutputData.fromJson(Map<String, dynamic> json) => _$SuccessOutputDataFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessOutputDataToJson(this);
}
