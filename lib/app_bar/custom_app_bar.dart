import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_flutter_pro/app_styling/app_color.dart';
import 'package:mini_flutter_pro/app_styling/app_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  AppBar? appBar;
  final bool hasHome;
  final bool? hasBackButton;
  final GlobalKey? key;
  final BuildContext context;
  final Function? dismissPopups;
  final Widget? bottom;
  final List<Widget>? actions;

  CustomAppBar(
      {this.title,
      this.hasHome = false,
      this.hasBackButton = true,
      this.key,
      this.dismissPopups,
      this.bottom,
      this.actions,
      required this.context}) {
    Widget? leadingIcon;

    if (hasBackButton!) {
      leadingIcon = IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () {
            if (dismissPopups != null) dismissPopups!();
            Navigator.of(context).pop();
          });
    } else if (hasHome) {
      leadingIcon = IconButton(
          icon: SvgPicture.asset(
            'assets/home_button_icon.svg',
            height: 20,
            width: 20,
          ),
          onPressed: () {
            if (dismissPopups != null) dismissPopups!();
            Navigator.of(context).pop();
          });
    }

    if (hasBackButton! || hasHome) {
      this.appBar = AppBar(
        title: Text(title!, style: AppStyle.darkDarkBoldTextStyle),
        elevation: 0,
        centerTitle: true,
        iconTheme: new IconThemeData(color: AppColors.darkDark),
        leading: leadingIcon,
        backgroundColor: Colors.transparent,
        bottom: bottom as PreferredSizeWidget?,
        actions: actions,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      );
    } else {
      this.appBar = AppBar(
        title: Text(title!, style: AppStyle.darkDarkBoldTextStyle),
        elevation: 0,
        centerTitle: true,
        iconTheme: new IconThemeData(color: AppColors.darkDark),
        backgroundColor: Colors.transparent,
        bottom: bottom as PreferredSizeWidget?,
        actions: actions,
        automaticallyImplyLeading: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final appBarBackground = DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          color: AppColors.lightLight,
        ),
        child: appBar);
    return PreferredSize(preferredSize: appBar!.preferredSize, child: appBarBackground);
  }

  @override
  Size get preferredSize => appBar!.preferredSize;
}
