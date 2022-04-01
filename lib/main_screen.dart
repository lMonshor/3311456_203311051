import 'dart:io';
import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/alert_dialog.dart';
import 'package:lmonshor_tech_tips/components_information.dart';
import 'package:lmonshor_tech_tips/about_page.dart';
import 'package:lmonshor_tech_tips/onboarding_page_state.dart';
import 'package:lmonshor_tech_tips/settings_page.dart';

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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Ayrıntılı bilgi için tıklayınız.",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      backgroundImage: AssetImage('images/pp.jpg'),
                    ),
                    accountEmail: Text(
                      "Mevlüt ARGIN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                //Test
                Card(
                  child: ListTile(
                      leading: const Icon(Icons.question_answer),
                      title: const Text(
                        'Teste hazır mısınız?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        showAlertDialogInfo(context);
                      }),
                ),
                //Setting
                Card(
                  child: ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text(
                        'Ayarlar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsPage(),
                          ),
                        );
                      }),
                ),
                //Onboardpage
                Card(
                  child: ListTile(
                      leading: const Icon(Icons.device_unknown),
                      title: const Text(
                        'Hızlı başlangıç',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnboardingPageState(),
                          ),
                        );
                      }),
                ),
                //About
                Card(
                  child: ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text(
                        'Hakkında',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ),
                        );
                      }),
                ),
                //Exit
                Card(
                  child: ListTile(
                      leading: const Icon(Icons.exit_to_app),
                      title: const Text(
                        'Çıkış',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        exit(0);
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
