import 'dart:convert';
import 'package:mini_flutter_pro/configrations/api_calls.dart';
import 'package:mini_flutter_pro/configrations/api_result.dart';
import 'package:mini_flutter_pro/configrations/app_localization.dart';
import 'package:mini_flutter_pro/configrations/error_movies_response.dart';
import 'package:mini_flutter_pro/configrations/service_configurations.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';

class MoviesClient {
  Future<ApiResult<SuccessMoviesResponse>> syncMovies(int page) async {
    var language = AppLocalizations.selectedLanguageCode;
    final url = "movie/now_playing?api_key=${ServiceConfigurations.ApiKey}&page=$page&language=$language";

    var response = await ApiCalls.get(url);
    print(url);

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
}
