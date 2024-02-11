import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:weatherapp/interfaces/weather_city_repository_interface.dart';
import 'package:weatherapp/models/city_model.dart';

class WeatherCityRepository implements WeatherCityRepositoryInterface {

  final String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  
  @override
  Future<WeatherCity> findWeatherCityByName(String cityName) async {
        String apiKey = Platform.environment['OPENWEATHER_API_KEY'] ?? 'API_KEY';

    final response = await http.get(Uri.parse('$baseUrl?q=$cityName&appid=$apiKey&lang=fr&units=metric'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      return WeatherCity.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather city');
    }
  }
}