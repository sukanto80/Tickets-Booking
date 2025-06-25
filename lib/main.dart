import 'package:flutter/material.dart';

import 'Screens/main_tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, // Primary blue theme
          brightness: Brightness.light,
        ),
      ),
      home: const MainTabView(),
    );
  }
}


