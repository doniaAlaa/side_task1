import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mini_flutter_pro/configrations/app_localization.dart';
import 'package:mini_flutter_pro/configrations/app_storage.dart';
import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model {
  final storage = AppStorage();

  String? selectedLanguageCode;

  static AppModel of(BuildContext context) {
    return ScopedModel.of<AppModel>(context);
  }

  Future<void> updateLocale() async {
    await storage.setSelectedLanguageCode(AppLocalizations.selectedLanguageCode);
    selectedLanguageCode = AppLocalizations.selectedLanguageCode;
  }
}
