import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  late SharedPreferences _prefs;

  final String _kSelectedLanguageCode = 'SelectedLanguageCode';

  String? get selectedLanguageCode => _prefs.getString(_kSelectedLanguageCode);
  Future<bool> setSelectedLanguageCode(String value) async => await _prefs.setString(_kSelectedLanguageCode, value);
  Future<bool> removeSelectedLanguageCode() async => await _prefs.remove(_kSelectedLanguageCode);

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
