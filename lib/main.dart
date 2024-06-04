import 'package:flutter/material.dart';
import 'translator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Check if the user has seen the intro
  bool hasSeenIntro = false; // Set to false initially

  runApp(MyApp(showIntro: !hasSeenIntro));
}

class MyApp extends StatelessWidget {
  final bool showIntro;

  const MyApp({Key? key, required this.showIntro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Translator',
      theme: ThemeData(
        primaryColor: Color(0xFFF9DF6D),
        backgroundColor: Color(0xFFF9DF6D),
      ),
      home: showIntro ? SingleIntroScreen() : TranslatorApp(),
    );
  }
}
