import 'package:get/get.dart';
import 'package:mini_flutter_pro/login/login_client.dart';

class LoginController extends GetxController {
  Future<void> callToken() async {
    final result = LoginClient().getToken();
    print(result);
  }
}
