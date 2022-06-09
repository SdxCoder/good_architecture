import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:goog_architecture/common/routing/routes.dart';
import 'package:goog_architecture/domain/weather_repository/weather_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class WeatherController extends GetxController {
  final WeatherRespository weatherRespository;

  WeatherController(this.weatherRespository);

  final weather = WeatherEntity.empty().obs;


  Future getWeather() async {
    final result = await weatherRespository.getWeather();

    result.when(success: (data) {
      // Show dialog etc
      

      if (data != null) {
        weather.value = data;
      }
    }, error: (msg) {
      // Show dialog etc
    });
  }


  @override
  void onInit() {
    super.onInit();
    getWeather();

  }
}
