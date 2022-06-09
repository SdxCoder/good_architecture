import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goog_architecture/common/routing/routes.gr.dart';

import 'common/routing/routes.dart';


class GetApp extends StatelessWidget {
  const GetApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate:
          appRouter.delegate(initialRoutes: [const WeatherViewRoute()]),
      locale: Get.locale,
      fallbackLocale: const Locale("en", "US"),
      enableLog: true,
      debugShowCheckedModeBanner: false,
    );
  }
}
