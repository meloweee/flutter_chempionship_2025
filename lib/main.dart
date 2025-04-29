import 'package:flutter/material.dart';
import 'package:matule/router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      routerConfig: RouterConfigGo.router,
    );
  }
}
