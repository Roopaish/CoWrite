import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final logger = Logger('App');
void setupLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    String emoji = '';
    if (record.level == Level.INFO) {
      emoji = 'âšī¸';
    } else if (record.level == Level.WARNING) {
      emoji = "â ī¸";
    } else if (record.level == Level.SEVERE) {
      emoji = "đŠ";
    }
    debugPrint('$emoji   ${record.level.name}: ${record.message}');
    if (record.error != null) {
      debugPrint('đ ${record.error}');
    }
    if (record.level == Level.SEVERE) {
      debugPrintStack(stackTrace: record.stackTrace);
    }
  });
}
