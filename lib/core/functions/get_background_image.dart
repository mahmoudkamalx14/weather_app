String getBackgroundImage(String countryName) {
  if (countryName == 'England') {
    return 'assets/images/london.png';
  } else if (countryName == 'France') {
    return 'assets/images/paris.png';
  } else if (countryName == 'Spain') {
    return 'assets/images/barcelona.png';
  } else if (countryName == 'United States of America') {
    return 'assets/images/new_york.png';
  } else if (countryName == 'Romania') {
    return 'assets/images/roma.png';
  } else if (countryName == 'United Arab Emirates') {
    return 'assets/images/dubai.png';
  } else if (countryName == 'Belarus') {
    return 'assets/images/minsk.png';
  } else if (countryName == 'Egypt') {
    return 'assets/images/giza.jpg';
  } else {
    return 'assets/images/default_1.png';
  }
}
