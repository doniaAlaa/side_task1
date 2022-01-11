import 'package:get/get.dart';

import 'package:mini_flutter_pro/configrations/app_localization.dart';
import 'package:mini_flutter_pro/configrations/app_storage.dart';

class AppController extends GetxController {
  final storage = AppStorage();
  String? selectedLanguageCode;

  Future<void> init() async {
    await storage.init();
  }

  Future<void> updateLocale() async {
    await storage.setSelectedLanguageCode(AppLocalizations.selectedLanguageCode);
    selectedLanguageCode = AppLocalizations.selectedLanguageCode;
  }
}
