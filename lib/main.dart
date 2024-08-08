import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Constant/AllRoutes.dart';
import 'package:verifytapp/Controllers/AuditController/AuditControllers.dart';
import 'package:verifytapp/Controllers/DashBoardController/DashBoradControllers.dart';
import 'package:verifytapp/Controllers/LoginController/LoginControllers.dart';
import 'package:verifytapp/Themes/theme_manager.dart';
import 'Controllers/ConfigPageController/ConfigScreenController.dart';
import 'Pages/SplashScree/SplashPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        key: navigatorKey,
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeManager()),
          ChangeNotifierProvider(create: (_) => LoginController()),
          ChangeNotifierProvider(create: (_) => DashBoardCtrlProvider()),
          ChangeNotifierProvider(create: (_) => AuditCtrlProvider()),
          ChangeNotifierProvider(create: (_) => ConfigController()),
        ],
        child:
            Consumer<ThemeManager>(builder: (context, themes, Widget? child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Verifyt',
              getPages: Routes.allRoutes,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                useMaterial3: true,
              ),
              home: const SplashScreenpage());
        }));
  }
}
