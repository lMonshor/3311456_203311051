import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/settings_page.dart';
import 'package:lmonshor_tech_tips/widgets/drawer_main.dart';
import 'package:lmonshor_tech_tips/widgets/main_listview.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        home: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.black,
            centerTitle: true,
            title: const Text("lMonshor tech Tips"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ));
                  },
                  icon: const Icon(Icons.settings))
            ],
          ),
          body: const ListViewMain(),
          drawer: const DrawerMain(),
        ));
  }
}
