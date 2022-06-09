


class WeatherEntity {
  final String city;
  final double temperature;

  WeatherEntity(this.city, this.temperature);
  WeatherEntity.empty()
      : city = '',
        temperature = 0;
}
