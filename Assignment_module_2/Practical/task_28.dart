// Implement a mock weather fetching program. Display different messages as it waits for a response and then shows a message like
// “Weather data loaded successfully.”

Future<void> fetchWeather() async {
  print("Fetching weather data...");
  await Future.delayed(Duration(seconds: 2));
  print("Checking temperature...");
  await Future.delayed(Duration(seconds: 2));
  print("Analyzing wind and humidity...");
  await Future.delayed(Duration(seconds: 2));
  print("Finalizing data...");
  await Future.delayed(Duration(seconds: 2));
  print("Weather data loaded successfully.");
}
void main() {
  fetchWeather();
}