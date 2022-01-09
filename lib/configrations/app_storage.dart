import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  late SharedPreferences _prefs;

  final String _kSelectedLanguageCode = 'SelectedLanguageCode';
  final String _kToken = 'UserToken';
  final String _kUserId = 'userId';
  final String _kUserName = 'userName';
  final String _kFullName = 'UserFullName';
  final String _kEmail = 'Email';
  final String _kCompanyName = 'CompanyName';
  final String _kAttendanceMode = 'Mode';
  final String _kProfileImageUrl = 'ProfileImgUrl';
  final String _kFeatures = 'Features';
  final String _kQuickAccessFeatures = 'QuickAccessFeatures';
  final String _kSosMobileNumber = 'SosMobileNumber';
  final String _kCompanyLogoUrl = 'CompanyLogo';
  final String _kMasterImageUrl = 'MasterImageUrl';
  final String _kShouldUpdateMasterImage = 'ShouldUpdateMasterImage';
  final String _kOrganizationCode = "OrganizationCode";
  final String _kLastOAuthProvider = "LastOAuthProvider";

  String? get selectedLanguageCode => _prefs.getString(_kSelectedLanguageCode);
  Future<bool> setSelectedLanguageCode(String value) async => await _prefs.setString(_kSelectedLanguageCode, value);
  Future<bool> removeSelectedLanguageCode() async => await _prefs.remove(_kSelectedLanguageCode);

  String? get token => _prefs.getString(_kToken);
  Future<bool> setToken(String value) async => await _prefs.setString(_kToken, value);
  Future<bool> removeToken() async => await _prefs.remove(_kToken);

  String? get userId => _prefs.getString(_kUserId);
  Future<bool> setUserId(String value) async => await _prefs.setString(_kUserId, value);
  Future<bool> removeUserId() async => await _prefs.remove(_kUserId);

  String? get userName => _prefs.getString(_kUserName);
  Future<bool> setUserName(String value) async => await _prefs.setString(_kUserName, value);
  Future<bool> removeUserName() async => await _prefs.remove(_kUserName);

  String? get fullName => _prefs.getString(_kFullName);
  Future<bool> setFullName(String value) async => await _prefs.setString(_kFullName, value);
  Future<bool> removeFullName() async => await _prefs.remove(_kFullName);

  String? get email => _prefs.getString(_kEmail);
  Future<bool> setEmail(String value) async => await _prefs.setString(_kEmail, value);
  Future<bool> removeEmail() async => await _prefs.remove(_kEmail);

  String? get companyName => _prefs.getString(_kCompanyName);
  Future<bool> setCompanyName(String value) async => await _prefs.setString(_kCompanyName, value);
  Future<bool> removeCompanyName() async => await _prefs.remove(_kCompanyName);

  String? get attendanceMode => _prefs.getString(_kAttendanceMode);
  Future<bool> setAttendanceMode(String value) async => await _prefs.setString(_kAttendanceMode, value);
  Future<bool> removeAttendanceMode() async => await _prefs.remove(_kAttendanceMode);

  String? get profileImageUrl => _prefs.getString(_kProfileImageUrl);
  Future<bool> setProfileImageUrl(String value) async => await _prefs.setString(_kProfileImageUrl, value);
  Future<bool> removeProfileImageUrl() async => await _prefs.remove(_kProfileImageUrl);

  List<String> get quickAccessFeatures => _prefs.getStringList(_kQuickAccessFeatures) ?? [];
  Future<bool> setQuickAccessFeatures(List<String> values) async =>
      await _prefs.setStringList(_kQuickAccessFeatures, values);
  Future<bool> removeQuickAccessFeatures() async => await _prefs.remove(_kQuickAccessFeatures);

  String? get sosMobileNumber => _prefs.getString(_kSosMobileNumber);
  Future<bool> setSosMobileNumber(String value) async => await _prefs.setString(_kSosMobileNumber, value);
  Future<bool> removeSosMobileNumber() async => await _prefs.remove(_kSosMobileNumber);

  String? get companyLogoUrl => _prefs.getString(_kCompanyLogoUrl);
  Future<bool> setCompanyLogoUrl(String value) async => await _prefs.setString(_kCompanyLogoUrl, value);
  Future<bool> removeCompanyLogoUrl() async => await _prefs.remove(_kCompanyLogoUrl);

  String? get masterImageUrl => _prefs.getString(_kMasterImageUrl);
  Future<bool> setMasterImageUrl(String value) async => await _prefs.setString(_kMasterImageUrl, value);
  Future<bool> removeMasterImageUrl() async => await _prefs.remove(_kMasterImageUrl);

  bool get shouldUpdateMasterImage => _prefs.getBool(_kShouldUpdateMasterImage) ?? true;
  Future<bool> setShouldUpdateMasterImage(bool value) async => await _prefs.setBool(_kShouldUpdateMasterImage, value);
  Future<bool> removeShouldUpdateMasterImage() async => await _prefs.remove(_kShouldUpdateMasterImage);

  String? get organizationCode => _prefs.getString(_kOrganizationCode);
  Future<bool> setOrganizationCode(String value) async => await _prefs.setString(_kOrganizationCode, value);
  Future<bool> removeOrganizationCode() async => await _prefs.remove(_kOrganizationCode);

  String? get lastOAuthProvider => _prefs.getString(_kLastOAuthProvider);
  Future<bool> setLastOAuthProvider(String value) async => await _prefs.setString(_kLastOAuthProvider, value);
  Future<bool> removeLastOAuthProvider() async => await _prefs.remove(_kLastOAuthProvider);

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
