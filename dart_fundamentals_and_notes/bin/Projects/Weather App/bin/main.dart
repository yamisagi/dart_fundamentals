import 'api_client.dart';
import 'weather_class.dart';

Future<void> main(List<String> args) async {
  if (args.length != 1) {
    print("dart main.dart <city>");
    return;
  }
  final city = args.first;
  print(city);
  final location = ApiClient(); // ApiClient classımızdan bir instance ürettik,
  // final id = await location.getLocationId(city); // ve sınıfımıza ait getLocationId methodumuzu async-await olarak çağırdığımızda
  // print(id); // Burada 'ID' olarak json datasının içinden 'woeid' numarasını ekrana yazdırmış olduk. ! Bu ID - WOEID yi daha sonra kullanacağız.
  final weather = await location.getWeather(city);
  final fetch = 
  print(weather);

}
