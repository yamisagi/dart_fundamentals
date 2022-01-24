class Weather {
  Weather({
    required this.weatherState,
    required this.minTemp,
    required this.maxTemp,
    required this.currTemp,
  });
  final String weatherState;
  final double minTemp;
  final double maxTemp;
  final double currTemp;

  factory Weather.fromJson(Map<String, Object?> json) => Weather(
        weatherState: json["weather_state_name"] as String,
        minTemp: json["min_temp"] as double,
        maxTemp: json["max_temp"] as double,
        currTemp: json["the_temp"] as double,
      );
  @override
  String toString() => '''
  Current Temp: ${currTemp.toStringAsFixed(1)}C
  Condition:    $weatherState 
  Min Temp:     ${minTemp.toStringAsFixed(1)}C
  Max Temp:     ${maxTemp.toStringAsFixed(1)}C
    ''';
  
}
