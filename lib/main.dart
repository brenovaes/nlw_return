import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nlw_return/app/ui/theme/palette.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "BUG Reporter",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
        fontFamily: 'Inter',
      ),
    ),
  );
}
