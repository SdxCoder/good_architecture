import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'models/weather.dart';


/// Weather api client to ineteract with Endpoints.
@injectable
class WeatherApiClient {

  final http.Client _httpClient;
  static const _baseUrl = 'www.metaweather.com';

  WeatherApiClient() : _httpClient = http.Client();

  
  /// Fetches [Weather] for a given [locationId].
  Future<Weather> getWeather(int locationId) async {
    final weatherRequest = Uri.https(_baseUrl, '/api/location/$locationId');
    final weatherResponse = await _httpClient.get(weatherRequest);

    

    if (weatherResponse.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    final bodyJson = jsonDecode(weatherResponse.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw WeatherNotFoundFailure();
    }

    final weatherJson = bodyJson['consolidated_weather'] as List;

    if (weatherJson.isEmpty) {
      throw WeatherNotFoundFailure();
    }

    return Weather.fromJson(weatherJson.first as Map<String, dynamic>);
  }


}


/// Exception thrown when locationSearch fails.
class LocationIdRequestFailure implements Exception {
  final String message;

  LocationIdRequestFailure({this.message = 'Location search failed'});
}

/// Exception thrown when the provided location is not found.
class LocationNotFoundFailure implements Exception {
  final String message;

  LocationNotFoundFailure({this.message = 'Location not found'});
}

/// Exception thrown when getWeather fails.
class WeatherRequestFailure implements Exception {
   final String message;

  WeatherRequestFailure({this.message = 'Weather request failed'});
}

/// Exception thrown when weather for provided location is not found.
class WeatherNotFoundFailure implements Exception {
   final String message;

  WeatherNotFoundFailure({this.message = 'Weather not found'});
}