# Flutter_chempionship_2025_template

**Description**

```
App name: Matule
Dart sdk: ^3.7.2 > 4.0.0
version: 1.0.0+1
Минимальная версия ОС, поддерживаемая приложением: Android - 11.0, iOS - 14.0.

```
---


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
---


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

*apk located at* 
```
~/build/app/outputs/apk/release
```
---

**Assets at pubspec.yaml**

```
  assets:
    - assets/images/
    - assets/localization/
```
---

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
---

**Readme.md structure**
```
Заголовок
---
Описание
Превью - картинка 16/9
---
Инструкции по запуску
Список интеграций
---
Скриншоты
---
Documentation (Документация - если нужна)
```
---

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
---


**Documentation**
##### Presentation
* Real Life Clean Architecture http://www.slideshare.net/mattiabattiston/real-life-clean-architecture-61242830

##### Blogs & Articles
* The Clean Architecture https://blog.8thlight.com/uncle-bob/2012/08/13/the-clean-architecture.html
* Screaming Architecture http://blog.8thlight.com/uncle-bob/2011/09/30/Screaming-Architecture.html
* NODB https://blog.8thlight.com/uncle-bob/2012/05/15/NODB.html
* Hexagonal Architecture http://alistair.cockburn.us/Hexagonal+architecture

##### Videos & Presentations
* Clean Coders ep. 7: Architecture, Use Cases, and High Level Design https://cleancoders.com/episode/clean-code-episode-7/show
* Robert C. Martin - Clean Architecture https://vimeo.com/43612849
* Robert C. Martin - Clean Architecture and Design https://www.youtube.com/watch?v=Nsjsiz2A9mg


<!--
## Contacts
For any question or feedback (really appreciated!) feel free to contact me:
* Email: mattia _(dot)_ battiston _(at)_ gmail.com
* Twitter: [@BattistonMattia](https://twitter.com/BattistonMattia)
* Linkedin: [Mattia Battiston](https://uk.linkedin.com/in/mattiabattiston)
-->
---
Copyright (c) 2025 Melowe