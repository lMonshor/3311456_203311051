import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/about_page.dart';
import 'package:lmonshor_tech_tips/pages/create_system_page.dart';
import 'package:lmonshor_tech_tips/pages/onboarding_page_state.dart';
import 'package:lmonshor_tech_tips/pages/read_systems_page.dart';
import 'package:lmonshor_tech_tips/pages/settings_page.dart';
import 'package:lmonshor_tech_tips/widgets/card_widget.dart';

class DrawerMain extends StatefulWidget {
  const DrawerMain({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerMain> createState() => _DrawerMainState();
}

class _DrawerMainState extends State<DrawerMain> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: light == true ? appbarcolorlight : appbarcolordark),
              arrowColor: Colors.black,
              accountName: const Text(
                "Mevcut hesap",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/pp.jpg'),
              ),
              accountEmail: Text(
                user.email!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          GestureDetector(
              child: cardBuild2(
                  icon: Icons.device_unknown, title: 'Hızlı başlangıç'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardingPageState(),
                  ),
                );
              }),
          GestureDetector(
              child: cardBuild2(icon: Icons.info, title: 'Hakkında'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              }),
          GestureDetector(
              child: cardBuild2(icon: Icons.add, title: 'Sistem ekle'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectPage(),
                  ),
                );
              }),
          GestureDetector(
              child: cardBuild2(icon: Icons.computer, title: 'Sistemler'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReadSystems(),
                  ),
                );
              }),
          GestureDetector(
              child: cardBuild2(
                  icon: Icons.switch_account, title: 'Hesaptan çıkıs yap'),
              onTap: () {
                FirebaseAuth.instance.signOut();
              }),
          GestureDetector(
              child: cardBuild2(icon: Icons.exit_to_app, title: 'Çıkış'),
              onTap: () {
                exit(0);
              }),
        ],
      ),
    );
  }
}
