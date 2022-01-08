class CurrentWeatherMain {
  final int temp;
  final int feels_like;
  final int temp_min;
  final int temp_max;
  final int pressure;
  final int humidity;

  CurrentWeatherMain({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
  });
}

class CurrentWeatherWind {
  final int speed;
  final int deg;

  CurrentWeatherWind({
    required this.speed,
    required this.deg,
  });
}

class CurrentWeather {
  final int timezone;
  final int id;
  final String name;
  final int cod;
  final CurrentWeatherMain main;
  final CurrentWeatherWind wind;

  CurrentWeather({
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
    required this.main,
    required this.wind,
  });
}
// - 273 잊지 말기

// https://openweathermap.org/current

// {"coord": { "lon": 139,"lat": 35},
// "weather": [
// {
// "id": 800,
// "main": "Clear",
// "description": "clear sky",
// "icon": "01n"
// }
// ],
// "base": "stations",
// "main": {
// "temp": 281.52,
// "feels_like": 278.99,
// "temp_min": 280.15,
// "temp_max": 283.71,
// "pressure": 1016,
// "humidity": 93
// },
// "wind": {
// "speed": 0.47,
// "deg": 107.538
// },
// "clouds": {
// "all": 2
// },
// "dt": 1560350192,
// "sys": {
// "type": 3,
// "id": 2019346,
// "message": 0.0065,
// "country": "JP",
// "sunrise": 1560281377,
// "sunset": 1560333478
// },
// "timezone": 32400,
// "id": 1851632,
// "name": "Shuzenji",
// "cod": 200
// }