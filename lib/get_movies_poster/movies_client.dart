import 'dart:convert';
import 'package:mini_flutter_pro/configrations/api_calls.dart';
import 'package:mini_flutter_pro/configrations/api_result.dart';
import 'package:mini_flutter_pro/configrations/error_movies_response.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';

class MoviesClient {
  Future<ApiResult<SuccessMoviesResponse>> syncMovies() async {
    const url = "movie/now_playing?api_key=31521ab741626851b73c684539c33b5a";

    var response = await ApiCalls.get(url);

    print(response.body);
    final jsonResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      return ApiResult<SuccessMoviesResponse>(
        isSuccess: true,
        outputModel: SuccessMoviesResponse.fromJson(jsonResponse),
      );
    }

    final result = ErrorMoviesResponse.fromJson(jsonResponse);

    return ApiResult<SuccessMoviesResponse>(isSuccess: false, statusMessage: result.status_message);
  }

  // Future<ApiResult<RequestListOutputModel?>> getRequestList(RequestListInputModel model) async {
  //   var url = '/api/hr/business-request?count=${model.count}&offset=${model.offset}';
  //   if (model.requestId != null) {
  //     url += '&requestId=${model.requestId}';
  //   }
  //   if (model.category != null) {
  //     url += '&category=${model.category}';
  //   }
  //   if (model.mode != null) {
  //     url += '&mode=${model.mode}';
  //   }
  //
  //   return _getRequestList(url,
  //       resultFactory: (json) => RequestListResponse.fromJson(json), token: _model.token, logger: _logger);
  // }

}
