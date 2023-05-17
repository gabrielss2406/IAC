import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'screens/AppPageScreen.dart';
import 'screens/HomePageScreen.dart';
import 'screens/ConfigPageScreen.dart';
import 'screens/DetailsPageScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    WindowManager.instance.setMinimumSize(const Size(1200, 700));
    WindowManager.instance.setMaximumSize(const Size(1200, 700));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Viasat Monitor",
      initialRoute: '/',//onde vai comecar o app
      routes: {
        '/': (context) => const HomePage(),
        '/app': (context) => const AppPage(),
        '/config': (context) => const ConfigPage(),
        '/details': (context) => const DetailsPage()
      },
      //},
    );
  } // Build
} // Stateless
