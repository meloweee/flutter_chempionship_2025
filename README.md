# flutter_chempionship_2025
Example Flutter android WS_2025

-
<img src="./assets/preview.webp">

```
flutter pub get
```

```
flutter run
```

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