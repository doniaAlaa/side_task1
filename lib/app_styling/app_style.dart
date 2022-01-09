import 'package:flutter/material.dart';

import 'package:mini_flutter_pro/app_styling/app_color.dart';
import 'package:mini_flutter_pro/app_styling/app_font_size.dart';
import 'package:mini_flutter_pro/configrations/app_localization.dart';

class AppStyle {
  static final String englishFontFamily = 'Montserrat';
  static final String arabicFontFamily = 'GeezaPro';
  static final String mixedFontFamily = 'Almarai-Montserrat';

  static String appFontFamily() {
    return isArabicSelected() ? arabicFontFamily : englishFontFamily;
  }

  static bool isArabicSelected() {
    return AppLocalizations.selectedLanguageCode == 'ar';
  }

  /////////////////////////////////////////////////////////////////////////
  // Primary => Orange
  static final TextStyle primaryTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primaryBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primaryBold2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primarySmallBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primaryMiniBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.miniFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primarySmallTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primaryLargeTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primaryLarge3BoldTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize3,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    height: 1.2,
  );

  static final TextStyle primaryLarge2BoldTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    height: 1.2,
  );

  /////////////////////////////////////////////////////////////////////////
  // Secondary => Yellow
  static final TextStyle secondaryTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary,
    height: 1.2,
  );

  static final TextStyle secondaryBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.secondary,
    height: 1.2,
  );

  static final TextStyle secondarySmallTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary,
    height: 1.2,
  );

  static final TextStyle secondarySmallBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.secondary,
    height: 1.2,
  );

  static final TextStyle secondaryBoldTitleTextStyle = TextStyle(
    fontSize: AppFontSizes.titleFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.secondary,
    height: 1.2,
  );

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Light => White
  static final TextStyle lightLightTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightSmallTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightSmallBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightBold2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightLargeBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.titleFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.lightLight.withOpacity(.5),
    height: 1.2,
  );

  static final TextStyle lightLightLarge2BoldTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle opaqueLightLightTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.lightLight.withOpacity(0.45),
    height: 1.2,
  );

  static final TextStyle lightLightLargeTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize2,
    fontWeight: FontWeight.w500,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightLargeThinTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize2,
    fontWeight: FontWeight.w100,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightText2Style = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w500,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightTitleTextStyle = TextStyle(
    fontSize: AppFontSizes.titleFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.lightLight,
    height: 1.2,
  );

  static final TextStyle lightLightMiniTextStyle = TextStyle(
    fontSize: AppFontSizes.miniFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.lightLight,
    height: 1.2,
  );

  /////////////////////////////////////////////////////////////////////////
  // Dark => Black
  static final TextStyle darkDarkBoldTextStyle = TextStyle(
    color: AppColors.darkDark,
    fontWeight: FontWeight.w700,
    fontSize: AppFontSizes.mediumFontSize,
    height: 1.2,
  );

  static final TextStyle darkDarkBold2TextStyle = TextStyle(
    color: AppColors.darkDark,
    fontWeight: FontWeight.w700,
    fontSize: AppFontSizes.mediumFontSize2,
    height: 1.2,
  );

  static final TextStyle buttonStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDark2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w500,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkThin2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w300,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkSmallBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkLargeTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkLargeBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkLargeThinTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize,
    fontWeight: FontWeight.w100,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkSmallTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkLarge2BoldTextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkLarge2TextStyle = TextStyle(
    fontSize: AppFontSizes.largeFontSize2,
    fontWeight: FontWeight.w500,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkDarkSmallUnderLineTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkLightSmallTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.darkLight,
    height: 1.2,
  );

  static final TextStyle darkLightMiniTextStyle = TextStyle(
    fontSize: AppFontSizes.miniFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.darkLight,
    height: 1.2,
  );

  static final TextStyle darkDarkMiniBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.miniFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.darkDark,
    height: 1.2,
  );

  static final TextStyle darkLightTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.darkLight,
    height: 1.2,
  );

  static final TextStyle darkLightBold2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.darkLight,
    height: 1.2,
  );

  static final TextStyle darkLightSmallBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.smallFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.darkLight,
    height: 1.2,
  );

  static final TextStyle darkLightBoldTextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.darkLight,
    height: 1.2,
  );

  /////////////////////////////////////////////////////////////////////////
  // Additional
  static final TextStyle errorTextStyle = TextStyle(
    fontSize: AppFontSizes.errorFontSize,
    fontWeight: FontWeight.w500,
    color: AppColors.error,
    height: 1.2,
  );

  static final TextStyle errorBold2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.error,
    height: 1.2,
  );

  static final TextStyle successBold2TextStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize,
    fontWeight: FontWeight.w700,
    color: AppColors.success,
    height: 1.2,
  );

  static final TextStyle successMessageStyle = TextStyle(
    fontSize: AppFontSizes.mediumFontSize2,
    fontWeight: FontWeight.w700,
    color: AppColors.success,
    height: 1.2,
  );

  /////////////////////////////////////////////////////////////////////////

  static final List<BoxShadow> defaultContainerShadow = [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.05),
      offset: Offset(0, 5),
      blurRadius: 10,
    ),
  ];

  static final List<BoxShadow> highContainerShadow = [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.05),
      offset: Offset(0, 5),
      blurRadius: 10,
      spreadRadius: 5,
    ),
  ];
}
