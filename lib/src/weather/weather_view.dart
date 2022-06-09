import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:goog_architecture/injection.dart';
import 'package:goog_architecture/src/weather/weather_controller.dart';

class WeatherView extends StatelessWidget {
 
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(
        init: getIt<WeatherController>(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(title: const Text('Weather')),
              body: Column(
                children: [
                  Obx(() => Text(controller.weather.value.city)),
                  Obx(()=> Text(controller.weather.value.temperature.toString())),
                ],
              ));
        });
  }
}
