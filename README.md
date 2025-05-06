# Flutter_chempionship_2025
Example Flutter android WS_2025

-
<img src="./assets/preview.webp">

**Description**
Минимальная версия ОС, поддерживаемая приложением: Android - 11.0, iOS - 14.0.


**To long story short:**
```
flutter pub get
```

```
flutter run
```

*if needed*
```
flutter clean 
```

**Build android apk**

*debug*
```
cd ./android

./gradlew assembleDebug
```

*release*
```
cd ./android

./gradlew assembleRelease
```

*profile*
```
cd ./android

./gradlew assembleProfile 
```

*apk located at:* ~/build
```

```

**Dependencies at pubspec.yaml**
```
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  mobx: ^2.5.0
  go_router: ^15.1.1
  sqflite: ^2.4.2
  get: ^4.7.2

  easy_localization: ^3.0.7+1
  google_fonts: ^6.2.1
```

**Folder stucture**
```
/lib
└── core
│   ├── brand
│   ├── router
│   ├── helpers
│   └── ...
│
└── layers
│   └── data
│   │   ├── local
│   │   │   └── sqflite_source.dart
│   │   └── network
│   │       └── api.dart
│   └── domain
│   │   ├── entity
│   │   │   ├── product.dart
│   │   │   ├── user.dart
│   │   │   └── ...
│   │   │
│   │   ├── repository   (... only CRUD)
│   │   │   ├── product_repository.dart
│   │   │   ├── user_repository.dart
│   │   │   └── ...
│   │   │
│   │   └── usecases
│   │       ├── product_usecase.dart
│   │       ├── user_usecase.dart
│   │       └── ...
│   │   
│   └── presentation
│       ├── screens
│       │   ├── home_screen.dart
│       │   ├── profile_screen.dart
│       │   └── ...
│       │
│       └── shared
│           ├── store
│           ├── ui
│           └── ...
│
└── main.dart
```