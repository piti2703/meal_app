import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meals__app/screens/categories.dart';


final theme = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: Colors.red,
  brightness: Brightness.dark,
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const CategoriesScreen()
    );
  }
}