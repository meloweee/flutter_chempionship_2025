import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/brand_colors.dart';
import 'package:matule/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ru'), Locale('en')],
      path: 'assets/localization',
      fallbackLocale: Locale('en'),
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Matule',
      routerConfig: RouterConfigGo.router,
      //----------------------------------------------------------
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
      //----------------------------------------------------------
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //----------------------------------------------------------
      theme: ThemeData(
          textTheme: GoogleFonts.ralewayTextTheme(),
          scaffoldBackgroundColor: BrandColors.background,
          platform: TargetPlatform.iOS,
          primaryColor: BrandColors.accent,
          colorScheme: ColorScheme.light(
            primary: BrandColors.accent
          ),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          })),
    );
  }
}
