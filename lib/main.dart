import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/main_screen.dart';
import 'package:lmonshor_tech_tips/onboarding_page_state.dart';
import 'package:lmonshor_tech_tips/settings_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatefulWidget {
  final bool showHome;

  const MyApp({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light ? lightTheme : darkTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: widget.showHome ? const MainScreen() : const OnboardingPageState(),
    );
  }
}
