class WeatherModel
{
  final String cityname;
  final String countryname;
  final double temperaturec;
  final String condition;
  final String conditionicon;

  const WeatherModel({
    required this.cityname,
    required this.countryname,
    required this.temperaturec,
    required this.condition,
    required this.conditionicon
});
  factory WeatherModel.fromjson(Map<String, dynamic> json)
  {
    return WeatherModel(
        cityname: json["location"]["name"],
        countryname: json['location']['country'],
        temperaturec: json['current']['temp_c'].toDouble(),
        condition: json['current']['condition']['text'],
        conditionicon: json['current']['condition']['icon'],
    );
  }
}