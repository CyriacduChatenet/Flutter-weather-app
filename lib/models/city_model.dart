import 'package:weatherapp/models/cloud_model.dart';
import 'package:weatherapp/models/coord_model.dart';
import 'package:weatherapp/models/main_info_model.dart';
import 'package:weatherapp/models/sys_model.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/models/wind_model.dart';

class WeatherCity {
  WeatherCity({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  Coord coord = Coord(lon: 0, lat: 0);
  List<Weather> weather = [Weather(id: '', main: '', description: '', icon: '')];
  String base = '';
  MainInfo main = MainInfo(temp: 0, feelsLike: 0, tempMin: 0, tempMax: 0, pressure: 0, humidity: 0);
  int visibility = 0;
  Wind wind = Wind(speed: 0, deg: 0);
  Cloud? clouds = Cloud(all: 0);
  int dt = 0;
  Sys sys = Sys(type: 0, id: 0, country: '', sunrise: 0, sunset: 0);
  int timezone = 0;
  int id = 0;
  String name = '';
  int cod = 0;

  factory WeatherCity.fromJson(Map<String, dynamic> json) {
    return WeatherCity(
      coord: Coord.fromJson(json['coord']),
      weather: List<Weather>.from(json['weather'].map((x) => Weather.fromJson(x))),
      base: json['base'],
      main: MainInfo.fromJson(json['main']),
      visibility: json['visibility'],
      wind: Wind.fromJson(json['wind']),
      clouds: json['clouds'] == null ? null : Cloud.fromJson(json['clouds']),
      dt: json['dt'],
      sys: Sys.fromJson(json['sys'], json['type'], json['id'], json['country'], json['sunrise'], json['sunset']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coord': coord.toJson(),
      'weather': List<dynamic>.from(weather.map((x) => x.toJson())),
      'base': base,
      'main': main.toJson(),
      'visibility': visibility,
      'wind': wind.toJson(),
      'clouds': clouds?.toJson(),
      'dt': dt,
      'sys': sys.toJson(),
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }
}