import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/login_page.dart';
import 'package:lmonshor_tech_tips/pages/onboarding_page_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // ignore: prefer_const_constructors
      options: FirebaseOptions(
          apiKey: "Apikey",
          appId: "APPID",
          messagingSenderId: "",
          projectId: "lmonshor-tech-tips-8f201"));
  runApp(MyApp(showHome: showHome));
}

final navigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: widget.showHome ? const LoginPage() : const OnboardingPageState(),
    );
  }
}
