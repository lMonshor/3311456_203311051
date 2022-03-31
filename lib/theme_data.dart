import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/alert_dialog.dart';

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key? key,
  }) : super(key: key);

  @override
  State<DarkLightTheme> createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
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
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'Tema değişikliği için anahtarı kullanın.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Switch(
                  value: light,
                  onChanged: (state) {
                    setState(() {
                      light = state;
                    });
                    showAlertDialogSuccess(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool light = true;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(color: Colors.blue),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(color: Colors.grey),
);
