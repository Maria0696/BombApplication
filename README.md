# Bomb Application

This project is a simple Flutter application where a button simulates a "bomb" that explodes after being pressed 5 times. The app includes a counter that tracks how many times you've pressed the button before the "explosion". After the explosion, you can reset the counter and try again.

## Features

- Press the button to increase the counter.
- When the counter reaches 5, the bomb "explodes."
- Shows an explosion message after 5 presses.
- Option to reset the counter and try again.

## Requirements

- Flutter SDK (v2.0.0 or higher)
- Dart (v2.12.0 or higher)

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/your_username/bomb-app.git
   
2. Navigate to the project directory:

    ```bash
   cd bomb-app
    
3. Install the dependencies:

   ```bash
   flutter pub get
   
4. Run the application:

   ```bash
   flutter run
   
## Usage

1. The app displays a button and a counter showing how many times you've pressed it.
   
2. Each time you press the button, the counter increases.

3. Once you reach 5 presses, a message will appear indicating that the "bomb has exploded."

4. You can press the "Reset" button to start again.

## Customization

If you want to change the number of presses required for the bomb to explode, you can modify the value 5 in the main.dart file in the following section:

```dart
if (_pressCount >= 5) {
  _exploded = true;
}
```

## Contributions

Contributions are welcome! If you have any ideas to improve the app or add new features, feel free to fork the project and open a pull request.
