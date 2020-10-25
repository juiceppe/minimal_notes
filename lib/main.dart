import 'package:flutter/material.dart';
import 'package:minimal_note_app/loginPage.dart';
import 'package:provider/provider.dart';
import 'appStateNotifier.dart';

void main() {
  return runApp(ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(isDarkMode: false),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeProvider.themeData,
        home: LoginPage(),
      );
    });
  }
}
