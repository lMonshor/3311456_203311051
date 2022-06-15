import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/login_page.dart';
import 'package:lmonshor_tech_tips/pages/settings_page.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
}) =>
    Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(child: Lottie.network(urlImage)),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 1, 215, 191),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              subtitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );

class OnboardingPageState extends StatefulWidget {
  const OnboardingPageState({Key? key}) : super(key: key);

  @override
  State<OnboardingPageState> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPageState> {
  final controller = PageController();
  bool isLastPage = false;

  void disponse() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light ? lightTheme : darkTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            children: [
              buildPage(
                  color: const Color.fromARGB(255, 26, 26, 26),
                  urlImage:
                      'https://assets2.lottiefiles.com/packages/lf20_frJ5A7.json',
                  title: 'HOŞGELDİNİZ',
                  subtitle: ''),
              buildPage(
                  color: const Color.fromARGB(255, 26, 26, 26),
                  urlImage:
                      'https://assets7.lottiefiles.com/private_files/lf30_gysbecac.json',
                  title:
                      'Bilgisayar bileşenleri nelerdir hiç merak ettiniz mi?',
                  subtitle:
                      'Öğrenmek istediğiniz bileşenin üzerine tıklayın ve görün.'),
              buildPage(
                  color: const Color.fromARGB(255, 26, 26, 26),
                  urlImage:
                      'https://assets2.lottiefiles.com/packages/lf20_eavpm9ev.json',
                  title: 'lMonshor tech Tips gururla sunar!',
                  subtitle: '')
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  primary: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 1, 215, 191),
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('showHome', true);

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  "Başlarken",
                  style: TextStyle(fontSize: 24),
                ))
            : Container(
                color: const Color.fromARGB(255, 1, 215, 191),
                padding: const EdgeInsets.symmetric(horizontal: 1),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      child: const Text(
                        "Geç",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => controller.jumpToPage(2),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: const WormEffect(
                            spacing: 16,
                            dotColor: Colors.black26,
                            activeDotColor: Colors.black),
                        onDotClicked: (index) => controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "Sonraki",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
