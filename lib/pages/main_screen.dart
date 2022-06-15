import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/graph_page.dart';
import 'package:lmonshor_tech_tips/pages/settings_page.dart';
import 'package:lmonshor_tech_tips/widgets/drawer_main.dart';
import 'package:lmonshor_tech_tips/widgets/main_listview.dart';

const List<Widget> _pages = <Widget>[ListViewMain(), GraphPage(title: 'AMD')];
int _selectedIndex = 0;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            unselectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: const Color.fromARGB(255, 1, 215, 191),
            selectedIconTheme: const IconThemeData(
                color: Color.fromARGB(255, 1, 215, 191), size: 30),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Ana ekran',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.show_chart,
                ),
                label: 'Grafik',
              ),
            ],
          ),
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
          body: Center(
            child: _pages.elementAt(_selectedIndex), //New
          ),
          drawer: const DrawerMain(),
        ));
  }
}
