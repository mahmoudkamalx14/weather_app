String getImage(String status) {
  if (status == 'Clear' || status == 'Light Could' || status == 'Sunny') {
    return 'assets/icons/clear.png';
  } else if (status == 'Sleet' || status == 'Snow' || status == 'Hail') {
    return 'assets/icons/snow.png';
  } else if (status == 'Heavy Cloud' || status == 'Partly cloudy') {
    return 'assets/icons/cloudy.png';
  } else if (status == 'Light Rain' ||
      status == 'Heavy Rain' ||
      status == 'Showers') {
    return 'assets/icons/rainy.png';
  } else if (status == 'Thunderstorm') {
    return 'assets/icons/thunderstorm.png';
  } else {
    return 'assets/icons/thunderstorm.png';
  }
}
