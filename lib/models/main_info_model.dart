class MainInfo {
  int temp;
  int feelsLike;
  int tempMin;
  int tempMax;
  int pressure;
  int humidity;

  MainInfo({required this.temp, required this.feelsLike, required this.tempMin, required this.tempMax, required this.pressure, required this.humidity});

  factory MainInfo.fromJson(Map<String, dynamic> json) {
    return MainInfo(
      temp: json['temp'],
      feelsLike: json['feels_like'],
      tempMin: json['temp_min'],
      tempMax: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temp': temp,
      'feels_like': feelsLike,
      'temp_min': tempMin,
      'temp_max': tempMax,
      'pressure': pressure,
      'humidity': humidity,
    };
  }
}