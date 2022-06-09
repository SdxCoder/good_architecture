import 'package:goog_architecture/data/weather_api/weather_api.dart';
import 'package:injectable/injectable.dart';
import '../../../common/result/result.dart';
import 'entity/weather_entity.dart';


/// 
/// Repository which manages user authentication.
/// 
/// 
@injectable
class WeatherRespository {
  final WeatherApiClient weatherApiClient;

  WeatherRespository(this.weatherApiClient);


  /// 
  Future<Result<WeatherEntity>> getWeather() async {

    try {
      final weather = await weatherApiClient.getWeather(1245);

      return Result.success(WeatherEntity(weather.city, weather.maxTemp));
    } on LocationNotFoundFailure catch (e) {
      return Result.error(e.message);
    }
  }
}
