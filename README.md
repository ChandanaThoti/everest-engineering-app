# Everest Engineering App

Everest Engineering app is a flutter application which has a welcome screen with login.

## Table of Contents

- [Description](#description)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Clone Project](#clone-project)
- [Environment Setup](#environment-setup)
- [Installation](#installation)
- [Start Project](#start-project)
- [Testing](#testing)
- [Contact Information](#contact-information)
- [Contibutions](#contributions)

## Features

- Login feature provides welcome screen with appBar, loginForm and footer.
- Navigation feature ensure to navigate to home and provide home and profile tabs.
- Network feature provides displaying and managing person data with get, put, post and delete http methods.

## Tech Stack

- **Flutter**
- Flutter-test for testing.

## Clone Project

- Clone the project and change directory to everest-engineering

```bash
git clone https://github.com/ChandanaThoti/everest-engineering-app.git
cd everest-engineering
```

## Environment SetUp

- Download Flutter SDK bundle based on platform.
- Create folder named "~/develop/"
- Extract the SDK:

```bash
unzip ~/Downloads/flutter_macos_arm64_3.38.5-stable.zip -d ~/develop/
```

- Add Flutter to your path: Open "~/.zprofile"

```bash
export PATH="$HOME/develop/flutter/bin:$PATH"
```

### For IOS

- Install XCode from app store.
- Install Pod dependency manager.

```bash
cd ios
pod install
```

### For Android

- Install Java in your OS from official document.
- Install Android Studio and install relative Android SDK platform and tools.
- [Download Android studio](https://developer.android.com/studio)

## Installation

```bash
flutter pub get
```

## Start Project

1. **Start the application** using:

```bash
  flutter run
```

## Testing

**Test the application** using:

```bash
   flutter test
```

## Contact Information

- Owner: Thoti Chandana
- GitHub:- [@ChandanaThoti](https://github.com/ChandanaThoti)

## Contribution

Contributions are welcome!

- If you have suggestions, bug reports, or would like to add new features, please open an issue or submit a pull request.
- Make sure to follow the existing code style and include relevant tests for any new functionality.
