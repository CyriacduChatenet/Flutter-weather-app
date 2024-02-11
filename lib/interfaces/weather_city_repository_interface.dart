import 'package:weatherapp/models/city_model.dart';

abstract class WeatherCityRepositoryInterface {
  Future<WeatherCity> findWeatherCityByName(String cityName);
}