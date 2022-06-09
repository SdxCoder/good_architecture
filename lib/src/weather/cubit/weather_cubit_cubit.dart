
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goog_architecture/domain/weather_repository/weather_repository.dart';
import 'package:injectable/injectable.dart';

part 'weather_cubit_state.dart';


@injectable
class WeatherCubitCubit extends Cubit<WeatherEntity> {
  final WeatherRespository weatherRespository;

  WeatherCubitCubit(this.weatherRespository) : super(WeatherEntity.empty());


  Future getWeather() async {
    final result = await weatherRespository.getWeather();
   

  }



}
