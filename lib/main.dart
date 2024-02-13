import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoopshub/presentation/screens/home_tab.dart';

void main() {
  runApp(const MyApp());
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.greenAccent,
    brightness: Brightness.dark
  ),
  textTheme: GoogleFonts.ralewayTextTheme(),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.greenAccent,
    titleTextStyle: GoogleFonts.poppins(),
    actionsIconTheme: const IconThemeData(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoopsHub',
      theme: theme,
      home: const HomeTab()
    );
  }
}