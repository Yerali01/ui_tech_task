import 'package:flutter/material.dart';
import 'package:ui_tech_task/main_screen.dart';
import 'package:ui_tech_task/responsive/desktop_ui.dart';
import 'package:ui_tech_task/responsive/mobile_ui.dart';
import 'package:ui_tech_task/responsive/tablet_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF282828)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF282828),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color(0xFF282828),
        inputDecorationTheme: const InputDecorationTheme(
          activeIndicatorBorder: BorderSide(
            color: Color(0xFF656565),
            width: 1,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFF656565),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFF656565),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFF656565),
              width: 1,
            ),
          ),
          focusColor: Color(0xFF656565),
          fillColor: Color(0xFF383434),
          filled: true,
        ),
      ),
      home: MainScreen(
        mobileUi: const MobileUi(),
        tabletUi: const TabletUi(),
        desktopUi: const DesktopUi(),
      ),
    );
  }
}
