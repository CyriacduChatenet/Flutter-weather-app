class Sys {
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;

  Sys({required this.type, required this.id, required this.country, required this.sunrise, required this.sunset});

  Sys.fromJson(Map<String, dynamic> json, this.type, this.id, this.country, this.sunrise, this.sunset) {
    type = json['type'];
    id = json['id'];
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'country': country,
      'sunrise': sunrise,
      'sunset': sunset,
    };
  }
}