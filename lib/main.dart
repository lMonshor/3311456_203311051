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
    // Replace with actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyBPEUR1ospe-cK-Qczts0HAkfgm6iNyz-A",
        authDomain: "lmonshor-tech-tips-8f201.firebaseapp.com",
        projectId: "lmonshor-tech-tips-8f201",
        storageBucket: "lmonshor-tech-tips-8f201.appspot.com",
        messagingSenderId: "444451984996",
        appId: "1:444451984996:web:402f3890009e90be0df171",
        measurementId: "G-1SJ4ENJGXF"),
  );

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
