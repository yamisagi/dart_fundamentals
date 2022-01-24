// ignore_for_file: unrelated_type_equality_checks
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather_class.dart';

class ApiClient {
  static const baseUrl = "https://www.metaweather.com/api/";
  // Oluşturduğumuz Sınıfa ait olan static property oluşturup API URL'ini kaydettik.

  // Future ile lokasyon bilgilerini API ile çekebileceğimiz bir method oluşturduk,

  Future<int> getLocationId(String city) async {
    //* Şehir adını parametre olarka alan bir asenkron method ile,
    final locationUrl = Uri.parse("$baseUrl/location/search/?query=$city");
    //* http paketi ile gelen uri parsing ile API'ın istek gönderebileceğimiz urli kaydettik
    final locationResponse = await http.get(locationUrl);
    //* API'den Response'u beklediğimiz yapı.
    //! Daha sonra Server'a gönderdiğimiz requestin responsuna bakıp hataları ele almamız gerek.
    //(200 - OK , 4XX ve 5XX kodları hata dönderir.)
    if (locationResponse.statusCode != 200) {
      throw Exception("Error getting information $city");
    }
    final jsonData = jsonDecode(locationResponse.body)
        as List; //! Burda API'dan dönen response bize JSON formatında bir bilgi gönderdiği için bunu döndermemiz decode etmemiz gerekir.
    return jsonData.first["woeid"]
        as int; //! jsonData değişkeni bize bir liste içinde Map dönderdiği için as List olarak kullanıp bunun içindeki,
    //! ID'miz olan 'woeid' yi dönderdik. Ve 'woeid' bize ID olarak bir int değer barındırdığı için "as int" kullandık.
  }

  //* Bu methodu da yukarıdaki method ile elde ettiğimiz 'woeid' yi parametre olarak kullanıp hava durumunu yakalamak için kullanıyoruz.
  Future<Weather> fetchWeather(int locationId) async {
    final weatherUrl = Uri.parse("$baseUrl/location/$locationId");
    // Bu uri ile 'woeid' kullanarak API'den bilgiyi çekiyoruz.
    final weatherResponse = await http.get(weatherUrl);
    // Bu değişken ile API'den dönen response kontrolünü yapmak için kullanıyoruz.
    if (weatherResponse != 200) {
      throw Exception("Error getting weather for responsed");
    }
    final weatherJson = jsonDecode(weatherResponse.body);
    final consolidatetWeather = weatherJson["consolidated_weather"] as List;
    return Weather.fromJson(consolidatetWeather[0]);
  }
  //! Bu methodda da fetchWeather methodu ile json bilgilerini aldığımız datayı kullanacağız.
  Future<Weather> getWeather(String city) async {
    final locationId = await getLocationId(city);
    return fetchWeather(locationId);
  }
}
