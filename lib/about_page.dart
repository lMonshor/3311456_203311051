import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/main_screen.dart';
import 'package:lmonshor_tech_tips/settings_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light ? lightTheme : darkTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hakkında"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ));
                },
                icon: const Icon(Icons.home))
          ],
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset('images/selcuk2.png'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Text(
                'Bu uygulama Selçuk Üniversitesi 3311456 numaralı, öğretim görevlisi Ahmet Cevahir ÇINAR olan Mobil Programlama dersi için 203311051 numaralı Mevlüt ARGIN tarafından yapılmıştır.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
