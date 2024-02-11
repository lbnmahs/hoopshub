import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.greenAccent,
    brightness: Brightness.dark
  ),
  // textTheme: GoogleFonts.montserratTextTheme()
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoopsHub',
      theme: theme,
      home: const Center()
    );
  }
}