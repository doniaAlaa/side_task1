import 'package:json_annotation/json_annotation.dart';

part 'get_movie_request_input_model.g.dart';

@JsonSerializable()
class GetMovieRequestInputModel {
  final String? requestId;
  final int? pageNumber;

  GetMovieRequestInputModel({required this.requestId, required this.pageNumber});

  factory GetMovieRequestInputModel.fromJson(Map<String, dynamic> json) => _$GetMovieRequestInputModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetMovieRequestInputModelToJson(this);
}
