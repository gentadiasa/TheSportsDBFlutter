# TheSportsDB Flutter App

## Description
This is Coding Test You are expected to build a flutter app. The app should follow flutter best practice in design pattern (MVP, MVVM,
BLoC, etc), State Management (Provider, getx, riverpod, BLoC, etc), etc
e. The app should follow clean code principle. The app needs to fulfill a few
requirements mentioned below :

## Features

### 1. Home Screen
This feature displays a visually all teams in a league based on flavor in ios and android. The list of teams should be in a list with scrollable feature.

### 2. Detail Screen
Minimum field you have to use : image, name, and description (only in the detail page) of a team. You can add other fields to explore your creativity.

## Project Structure
```
|-- lib
    |-- app
        |-- core
            |-- widgets
            |-- global constant variables or classes
        |-- data
            |-- models
            |-- repositories
        |-- domain
            |-- entities
            |-- repositories
            |-- usecase
        |-- modules
            |-- features
                |-- bindings
                |-- controllers
                |-- views
        |-- routes (Code generated via package:get_cli/get_cli.dart)
            |-- app_pages
            |-- app_routes
    |-- main.dart
```

## How to Run the App

- Clone the repository
- Ensure you have Flutter last version installed and set up
- Run `flutter pub get` to fetch the project dependencies
- DEV: Use `flutter run --flavor dev`, dev-release: `flutter run --flavor dev --release`
- PROD: Use `flutter run --flavor prod`, prod-release: `flutter run --flavor prod --release`

  ## Technologies and Packages Used

- Flutter (latest version)
- [GetX](https://github.com/jonataslaw/getx) for state management
- [API](http://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?l=English%20Premier%20League) Football Public API
- [google_fonts](https://pub.dev/packages/google_fonts) - Flutter package to use fonts from fonts.google.com
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) Flutter plugin for adapting screen and font size
- [flutter_svg](https://pub.dev/packages/flutter_svg) SVG rendering and widget library for Flutter
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) Package for updating Flutter app's launcher icon
- [connectivity_plus](https://pub.dev/packages/flutter_launcher_icons) Flutter plugin for discovering the state of the network (WiFi & mobile/cellular) connectivity on Android and iOS.
- [dio](https://pub.dev/packages/flutter_launcher_icons) A powerful HTTP networking package, supports Interceptors, Aborting and canceling a request, Custom adapters, Transformers, etc.
