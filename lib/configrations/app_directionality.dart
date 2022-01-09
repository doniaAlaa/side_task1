import 'package:flutter/material.dart';
import 'package:mini_flutter_pro/configrations/app_localization.dart';

class AppDirectionality {
  static TextDirection textDirectionality() {
    return AppLocalizations.isSelectedLanguageRTL ? TextDirection.rtl : TextDirection.ltr;
  }

  static bool get isRTL => AppLocalizations.isSelectedLanguageRTL;
}
