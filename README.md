# Weather Watch 🌤️

Weather Watch is a dynamic weather tracking app built with Flutter, utilizing the MVVM architecture and state management with GetX. This app provides real-time weather data, including current, hourly, and daily temperature updates, along with additional weather metrics such as humidity, wind speed, and rainfall.

## Mock Up
![Home Screen](assets/images/app_mock.png)

## Features

- **Current Weather**: Real-time temperature and condition updates.
- **Hourly Forecast**: Swipeable carousel view to check hourly temperatures, aligned with the current hour.
- **Daily Forecast**: Displays minimum and maximum temperature predictions for the week.
- **Weather Conditions**: Support for various weather icons (cloudy, rainy, sunny, etc.) based on conditions.
- **Dynamic Theme**: Adjusts for light and dark modes based on device settings.
- **Offline Support**: Caches data for limited offline usage.

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/weather_watch.git
   cd weather_watch
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## Folder Structure

The project follows the MVVM architecture with the following structure:

- `lib`
    - `ui/` - Contains the user interface components.
        - `screens/` - Contains different screens like `HomeScreen`.
        - `widgets/` - Reusable UI widgets such as `TemperatureWidget`.
    - `models/` - Data models for handling JSON data, like `CurrentTemperature`, `Hourly`, and `Daily`.
    - `view_model/` - Contains repositories and controllers used in the app.
        - `repositories/` - Responsible for data handling and API calls.
        - `service/` - Holds the business logic and connects the UI to data sources.
    - `utils/` - Utility functions, constants, and extensions.
        - `constants/` - Constant values, assets, image paths, and theme colors.
        - `device/` - Contains utilities for checking device features.

## Key Dependencies

- **GetX**: For state management, dependency injection, and routing.
- **Freezed & JsonSerializable**: For immutable model classes and JSON serialization.
- **Carousel Slider**: Used for horizontal scrolling of hourly weather data.
- **Intl**: Formatting dates and times for display.

## Usage

- **WeatherRepository**: Centralized location for fetching weather data.
- **Home Screen**: Displays current weather data and forecasts with real-time updates.
- **Hourly Carousel**: Custom carousel for swiping through hourly temperature forecasts, centered to the current hour.
- **Daily Forecast**: A list displaying daily minimum and maximum temperatures.

## API Setup

1. Update `weather_repository.dart` with your weather API URL and API key.
2. Ensure proper formatting for JSON responses to match data models.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch for your feature: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add feature'`.
4. Push to the branch: `git push origin feature-name`.
5. Submit a pull request.

## License

This project is licensed under the MIT License.

## Acknowledgments

- [Weather API Provider](https://open-meteo.com) for real-time data.
- Community contributions for Flutter and GetX packages.