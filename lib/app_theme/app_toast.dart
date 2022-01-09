import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({required msg}) {
  if (Platform.isAndroid || Platform.isIOS) {
    Fluttertoast.showToast(msg: msg, timeInSecForIosWeb: 2);
  } else {
    BotToast.showText(text: msg, textStyle: TextStyle(fontSize: 14, color: Colors.white));
  }
}
