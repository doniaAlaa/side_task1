import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mini_flutter_pro/app_bar/custom_app_bar.dart';
import 'package:mini_flutter_pro/app_styling/app_button.dart';
import 'package:mini_flutter_pro/app_styling/app_color.dart';
import 'package:mini_flutter_pro/app_styling/app_padding.dart';
import 'package:mini_flutter_pro/app_styling/app_style.dart';
import 'package:mini_flutter_pro/configrations/app_directionality.dart';
import 'package:mini_flutter_pro/configrations/app_localization.dart';
import 'package:mini_flutter_pro/configrations/app_model.dart';
import 'package:mini_flutter_pro/get_movies_poster/custom_loading.dart';

class LanguageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LanguageScreenState();
  }
}

class LanguageScreenState extends State<LanguageScreen> {
  String? selectedLanguage;

  @override
  void initState() {
    selectedLanguage = AppLocalizations.selectedLanguage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: AppDirectionality.textDirectionality(),
      child: Scaffold(
          appBar: CustomAppBar(
            context: context,
            title: valueOf('language').toUpperCase(),
            hasBackButton: true,
          ),
          body: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: AppPadding.upperPadding,
                  ),
                  _buildItems(),
                  SizedBox(
                    height: AppPadding.upperPadding,
                  ),
                  AppButton2(context).button(valueOf('confirm'), () => changeLanguage(selectedLanguage))
                ],
              ))),
    );
  }

  Widget _buildItems() {
    List<Widget> widgets = <Widget>[];

    for (var language in AppLocalizations.languages) {
      widgets.add(
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  child: Text(
                    language,
                    style: AppStyle.darkDarkTextStyle,
                  ),
                  onTap: () {
                    setState(() {
                      selectedLanguage = language;
                    });
                  },
                )),
                selectedLanguage == language ? SvgPicture.asset('assets/Check.svg') : Container()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.5,
              color: AppColors.darkLight,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }
    return Column(
      children: widgets,
    );
  }

  Future changeLanguage(String? selectedLanguage) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: CustomLoadingIndicator(invertColor: true),
      ),
    );
    Get.updateLocale(Locale(AppLocalizations.languagesMap.entries.firstWhere((e) => e.value == selectedLanguage).key));
    await AppModel.of(context).updateLocale();
    Navigator.pop(context);
    Navigator.pop(context);
  }
}

// import 'package:flutter/cupertino.dart';
//
// class LanguageScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
