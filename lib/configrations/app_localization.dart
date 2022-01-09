import 'dart:convert';
import 'dart:ui';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mini_flutter_pro/configrations/app_storage.dart';

class AppLocalizations extends Translations {
  // Add or remove languages from here
  static final _storage = AppStorage();

  static final languagesMap = {
    "en": "English",
    "ar": "العربية",
  };

  static final _rtlLanguages = [
    "ar",
  ];

  static Map<String, Map<String, String>> _translationsMap = {};

  static final AppLocalizations _appTranslations = AppLocalizations._internal();

  factory AppLocalizations() {
    return _appTranslations;
  }

  AppLocalizations._internal();

  @override
  Map<String, Map<String, String>> get keys => _translationsMap;

  static List<Locale> get supportedLocales => languagesMap.entries.map((e) => Locale(e.key)).toList();

  static List<String> get languageCodes => languagesMap.keys.toList();

  static List<String> get languages => languagesMap.values.toList();

  static String? get selectedLanguage =>
      languagesMap.entries.firstWhereOrNull((e) => e.key == Get.locale!.languageCode)?.value;

  static String get selectedLanguageCode => Get.locale!.languageCode;

  static bool get isSelectedLanguageRTL => _rtlLanguages.contains(selectedLanguageCode);

  static Future<void> loadTranslations() async {
    _translationsMap = {};
    for (var k in languagesMap.keys) {
      try {
        String jsonContent = await rootBundle.loadString("assets/locale/localization_$k.json");
        _translationsMap[k] = Map<String, String>.from(json.decode(jsonContent));
      } catch (_) {
        print("Error: Unable to load localization_$k.json");
      }
    }
  }

  static Future<void> setInitialLocale() async {
    await _storage.init();
    String? cachedLanguageCode = _storage.selectedLanguageCode;
    String initialLanguageCode;

    if (cachedLanguageCode != null && AppLocalizations.languagesMap.keys.contains(cachedLanguageCode)) {
      initialLanguageCode = cachedLanguageCode;
    } else if (AppLocalizations.languagesMap.keys.contains(Get.deviceLocale!.languageCode)) {
      initialLanguageCode = Get.deviceLocale!.languageCode;
    } else {
      initialLanguageCode = AppLocalizations.languagesMap.keys.first;
    }

    Get.locale = Locale(initialLanguageCode);
  }
}

String valueOf(String key) => key.tr;
