# LutoReco: An Intelligent Filipino Dish Recommendation System Using Ingredient-Based AI

LutoReco recommends Filipino dishes based on the ingredients you have. This version is the Flutter Web starting point, with Home, Login, Register, and Dashboard pages.

## Author

Kiana Calyl G. Compra (individual project)

## Technology Stack

- Flutter (Dart) for the web app
- Google Chrome to run and test the app
- Visual Studio Code as the code editor
- Git and GitHub for version control
- Packages: `go_router` and `http` (added for page routing and API calls in later activities)

## How to Run the Flutter Web Project

```bash
# Clone the project
git clone https://github.com/kianacalylcompra/kianas_project.git
cd kianas_project

# Run the project
flutter pub get
flutter run -d chrome

# Build for web
flutter build web
```

## Initial Pages/Screens Included

- **Home Page:** welcome message and a button to the login page
- **Login Page:** email and password fields with input validation (placeholder, no real accounts yet)
- **Register Page:** full name, email, password, and confirm password with input validation (placeholder, does not save accounts yet)
- **Dashboard:** module placeholder cards, shown after login
- **Navigation Shell:** green header menu. Logged out: Home, Login, Register. Logged in: Home, Dashboard, Logout.

## Project Folders

```
lib/
├─ main.dart
├─ app.dart
├─ constants/   (app name and colors)
├─ models/      (data objects, for later)
├─ routes/      (navigation, for later)
├─ screens/     (full pages)
├─ services/    (login state, API calls later)
├─ utils/       (input validation rules)
└─ widgets/     (reusable UI pieces)
```

## Repository Link and First Checkpoint Date

- Repository: https://github.com/kianacalylcompra/kianas_project
- First checkpoint date: October 12, 2026