import 'package:json_annotation/json_annotation.dart';

part 'movie_input_model.g.dart';

@JsonSerializable()
class MoviesOutputModel {
  final int? id;
  final List<Result> result;

  MoviesOutputModel(this.id, this.result);

  factory MoviesOutputModel.fromJson(Map<String, dynamic> json) => _$MoviesOutputModelFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesOutputModelToJson(this);
}

@JsonSerializable()
class Result {
  final int? id;
  final String posterPath;

  final String overview;

  final bool adult;

  final List<int> ids;

  Result({this.id, required this.posterPath, required this.overview, required this.adult, required this.ids});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
