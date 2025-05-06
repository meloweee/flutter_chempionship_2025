# Template for flutter_chempionship_2025
Template for example flutter_chempionship_2025

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