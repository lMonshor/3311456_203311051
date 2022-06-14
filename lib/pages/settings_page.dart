import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/main_screen.dart';

bool light = true;
DrawerThemeData drawerTheme = DrawerThemeData(
  backgroundColor: Colors.grey[400],
);
Color appbarcolorlight = const Color.fromARGB(255, 26, 26, 26);
Color? appbarcolordark = Colors.grey[400];
ThemeData lightTheme = ThemeData(
    drawerTheme: drawerTheme,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(color: appbarcolorlight),
    cardColor: Colors.grey[400],
    scaffoldBackgroundColor: Colors.grey[400]);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(color: appbarcolordark),
    cardColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[900]);

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light ? lightTheme : darkTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ayarlar'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.home))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 30),
              child: const Text(
                'Sistem teması aydınlık modda ise tema değişikliği için anahtarı kullanın. ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Center(
              child: Switch(
                value: light,
                onChanged: (state) async {
                  setState(() {
                    light = state;
                  });
                  await Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
