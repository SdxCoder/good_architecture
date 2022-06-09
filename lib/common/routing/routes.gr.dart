// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:goog_architecture/src/weather/weather_view.dart' as _i1;

class NavRouter extends _i2.RootStackRouter {
  NavRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    WeatherViewRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.WeatherView());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(WeatherViewRoute.name, path: '/')];
}

/// generated route for
/// [_i1.WeatherView]
class WeatherViewRoute extends _i2.PageRouteInfo<void> {
  const WeatherViewRoute() : super(WeatherViewRoute.name, path: '/');

  static const String name = 'WeatherViewRoute';
}

