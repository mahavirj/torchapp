# torchapp

## Description
Torchapp is a simple Android application that allows you to toggle the flashlight on and off using a button.

## How to Build and Run the App

### Prerequisites
- Android Studio installed on your computer
- An Android device or emulator

### Steps
1. Clone the repository:
   ```
   git clone https://github.com/mahavirj/torchapp.git
   ```
2. Open the project in Android Studio.
3. Connect your Android device to your computer or start an emulator.
4. Build and run the app by clicking the "Run" button in Android Studio.

## Gradle Build Process

This project uses Gradle as the build system. The `gradlew` file is a wrapper script that allows you to run Gradle commands without requiring a local Gradle installation. The Gradle version used in this project is 7.6.

### Running Gradle Commands

To build the project using Gradle, you can use the following command:
```
./gradlew build
```

This will compile the code, run the tests, and package the app into an APK file.

### CI Workflow

The CI workflow is set up to automatically build the project and generate the APK file. The workflow includes the following steps:
1. Checkout the code
2. Set up JDK 17
3. Set up Android SDK
4. Install Gradle
5. Download and set executable permissions for `gradlew`
6. Run `gradle wrapper --gradle-version 7.6`
7. Build the project with Gradle
8. Upload the generated APK as an artifact
