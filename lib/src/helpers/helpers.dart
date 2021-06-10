import 'package:flutter/services.dart' as services;

void trocarStatusLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.light);
}

void trocarStatusDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.dark);
}

