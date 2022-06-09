

import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:goog_architecture/common/routing/routes.gr.dart';
import 'package:injectable/injectable.dart';

import '../../src/weather/weather_view.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: WeatherView, initial: true),

])

class $NavRouter {}

final appRouter = NavRouter(Get.rootController.key);