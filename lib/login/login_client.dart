import 'dart:convert';
import 'package:mini_flutter_pro/configrations/api_calls.dart';
import 'package:mini_flutter_pro/configrations/api_result.dart';
import 'package:mini_flutter_pro/configrations/service_configurations.dart';
import 'package:mini_flutter_pro/login/error_auth_response.dart';
import 'package:mini_flutter_pro/login/success_auth_response.dart';

class LoginClient {
  Future<ApiResult<SuccessAuthResponse>> getToken() async {
    final url = "authentication/token/new?api_key=${ServiceConfigurations.ApiKey}";

    var response = await ApiCalls.get(url);
    print(url);

    print(response.body);
    final jsonResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      return ApiResult<SuccessAuthResponse>(
        isSuccess: true,
        outputModel: SuccessAuthResponse.fromJson(jsonResponse),
      );
    }

    final result = ErrorAuthResponse.fromJson(jsonResponse);
    return ApiResult<SuccessAuthResponse>(isSuccess: false, statusMessage: result.status_message);
  }
}
