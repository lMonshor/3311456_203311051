import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/questions.dart';
import 'package:lmonshor_tech_tips/settings_page.dart';
import 'package:lmonshor_tech_tips/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'information.dart';
import 'onboarding_page_state.dart';

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
            title: const Text("lMonshor tech Tips"),
            actions: [
              IconButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('showHome', false);

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const OnboardingPageState()),
                    );
                  },
                  icon: const Icon(Icons.logout)),
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
          body: ListView(
            children: <Widget>[
              //MotherBoard
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/motherboard.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "Motherboard",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MotherboardInformation(),
                        ),
                      );
                    }),
              ),
              //CPU
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/cpu.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "CPU (Central Process Unit)",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CpuInformation(),
                        ),
                      );
                    }),
              ),
              //GPU
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/gpu.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "GPU (Graphics Processing Unit)",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GpuInformation(),
                        ),
                      );
                    }),
              ),
              //RAM
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/ram.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "RAM (Random Access Memory)",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RamInformation(),
                        ),
                      );
                    }),
              ),
              //SSD
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/ssd.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "SSD (Solid State Drive)",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SsdInformation(),
                        ),
                      );
                    }),
              ),
              //HDD
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/hdd.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "HDD (Hard Disk Drive)",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HddInformation(),
                        ),
                      );
                    }),
              ),
              //PSU
              Card(
                child: ListTile(
                    leading: const Image(
                      image: AssetImage("images/psu.png"),
                      width: 100,
                    ),
                    title: const Text(
                      "PSU (Power Suply Unit)",
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PsuInformation(),
                        ),
                      );
                    }),
              ),
            ],
          ),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const UserAccountsDrawerHeader(
                    accountName: Text(
                      "Designed & Developed by",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
                    accountEmail: Text(
                      "Mevlüt ARGIN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Card(
                  child: ListTile(
                      leading: const Icon(Icons.question_answer),
                      title: const Text('Teste hazır mısınız?'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuestionPage1(),
                          ),
                        );
                      }),
                )
              ],
            ), //Column
          ),
        ));
  }
}
