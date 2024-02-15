import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hoopshub/data/provider/team_data_provider.dart';
import 'package:hoopshub/data/repository/team_repository.dart';
import 'package:hoopshub/views/screens/home_tab.dart';
import 'package:hoopshub/bloc/teams_bloc.dart';

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
    return RepositoryProvider(
      create: (context) => TeamRepository(TeamDataProvider()),
      child: BlocProvider(
        create: (context) => TeamsBloc(context.read<TeamRepository>()),
        child: MaterialApp(
          title: 'HoopsHub',
          theme: theme,
          home: const HomeTab()
        ),
      ),
    );
  }
}