import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_router.dart';
import 'package:flutter_components/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: HomeScreen();
        initialRoute: AppRoutes.inicialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppThemes.darkTheme 
        );
  }
}
