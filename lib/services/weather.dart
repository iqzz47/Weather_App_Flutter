
import '../services/network.dart';

import'../screens/location_screen.dart';





//method to get Dhaka weather
Future<dynamic> getCityWeather(double latitude, double longitude) async {
  final String weatherUrl =
      "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=e749ea93de0642a3344d37551b8100f3&units=metric";

  NetworkHelper networkHelper = NetworkHelper('$weatherUrl');
  var weatherData = await networkHelper.getData();
  return weatherData;
}


Future<dynamic> getCityWeather2(String Cityname) async {
  final String weatherUrl =
      "https://api.openweathermap.org/data/2.5/weather?q=$Cityname&appid=5a18fc6e52dc7342ee016a20e95a106c&units=metric";

  NetworkHelper networkHelper = NetworkHelper('$weatherUrl');
  var weatherData = await networkHelper.getData();
  return weatherData;
}



void fetchWeatherData(String cityName) async {
  // Use your weather API service to fetch data for the selected city

  var weatherData = await getCityWeather2(cityName);
  return weatherData;

  // Update the UI with the new weather data

}
