import 'package:http/http.dart' as http;
import 'package:mini_flutter_pro/configrations/app_logger.dart';

class ApiCalls {
  static const baseUrl = "https://api.themoviedb.org/3/";

  static Future<http.Response> get(String relativeUrl, {LoggerWithTag? logger}) async {
    var url = baseUrl + relativeUrl;

    logger?.info(message: "GET: " + url);

    var response = await http.get(Uri.parse(url));

    //print error in log
    logger?.info(message: "OUTPUT ${response.statusCode.toString()} : " + response.body.toString());

    return response;
  }
}
