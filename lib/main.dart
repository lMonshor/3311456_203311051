import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/login_page.dart';
import 'package:lmonshor_tech_tips/pages/onboarding_page_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

  await Firebase.initializeApp(
      options: kIsWeb
          ? const FirebaseOptions(
              apiKey: "AIzaSyBiYLzEqW4zL8rCE_2_dyy74NkTgi7aqAU",
              authDomain: "lmonshor-tech-tips-8b555.firebaseapp.com",
              projectId: "lmonshor-tech-tips-8b555",
              storageBucket: "lmonshor-tech-tips-8b555.appspot.com",
              messagingSenderId: "458968775227",
              appId: "1:458968775227:web:e59713f474178d99f07a1e")
          : null);

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
