import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mini_flutter_pro/app_styling/app_color.dart';
import 'package:mini_flutter_pro/app_styling/app_padding.dart';
import 'package:mini_flutter_pro/app_styling/app_style.dart';
import 'package:mini_flutter_pro/get_movies_poster/custom_loading.dart';

class AppButton2 {
  BuildContext context;

  AppButton2(this.context);

  Widget button(String text, Function? onPressed, [Color? background]) {
    return MaterialButton(
      height: 46,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: background == null
          ? onPressed == null
              ? AppColors.darkLight
              : AppColors.secondary
          : background,
      minWidth: MediaQuery.of(context).size.width - AppPadding.secondaryPadding,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onPressed == null ? () {} : onPressed as void Function()?,
      child: Text(text, textAlign: TextAlign.center, style: AppStyle.lightLightBoldTextStyle),
    );
  }

  Widget button2(String text, Function? onPressed, [Color? background]) {
    return Material(
        elevation: 1,
        color: background == null ? AppColors.darkLight : background,
        child: MaterialButton(
          height: 46,
          minWidth: MediaQuery.of(context).size.width - AppPadding.secondaryPadding,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: onPressed as void Function()?,
          child: Text(text, textAlign: TextAlign.center, style: AppStyle.lightLightBoldTextStyle),
        ));
  }

  Widget loadingButton(
      {required String text, required Function? onPressed, bool isLoading = false, Color? background}) {
    return MaterialButton(
      height: 46,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: background == null ? AppColors.darkLight : background,
      minWidth: MediaQuery.of(context).size.width - AppPadding.secondaryPadding,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: isLoading || onPressed == null ? () {} : onPressed as void Function()?,
      child: isLoading
          ? CustomLoadingIndicator(invertColor: true)
          : Text(text, textAlign: TextAlign.center, style: AppStyle.lightLightBoldTextStyle),
    );
  }

  Widget loadingButton2(
      {required String text, required Function? onPressed, bool isLoading = false, Color? background}) {
    return MaterialButton(
      height: 55,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: background == null ? AppColors.darkLight : background,
      minWidth: MediaQuery.of(context).size.width - AppPadding.secondaryPadding,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: isLoading || onPressed == null ? () {} : onPressed as void Function()?,
      child: isLoading
          ? CustomLoadingIndicator(invertColor: true)
          : Text(text, textAlign: TextAlign.center, style: AppStyle.lightLightBoldTextStyle),
    );
  }

  Widget iconButton({required Widget icon, required Function? onPressed, Color? color, bool isEnabled = true}) {
    return MaterialButton(
      height: 70,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: isEnabled && color != null ? color : AppColors.darkLight,
      minWidth: MediaQuery.of(context).size.width - (AppPadding.secondaryPadding * 2),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: isEnabled && onPressed != null ? onPressed as void Function()? : () {},
      child: icon,
    );
  }

  Widget iconTextButton(
      {required String text, required Widget icon, required Color color, required Function? onPressed}) {
    return MaterialButton(
      height: 70,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.grey, width: 1),
      ),
      color: color,
      minWidth: MediaQuery.of(context).size.width / 2,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () => onPressed?.call(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(width: 15),
            Text(text, textAlign: TextAlign.center, style: AppStyle.darkDark2TextStyle),
          ],
        ),
      ),
    );
  }
}
