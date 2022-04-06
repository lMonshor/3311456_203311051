import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/settings_page.dart';
import 'package:lmonshor_tech_tips/alert_dialog.dart';

int score = 0;

class QuestionPage1 extends StatefulWidget {
  const QuestionPage1({Key? key}) : super(key: key);

  @override
  State<QuestionPage1> createState() => _QuestionPageState1();
}

class _QuestionPageState1 extends State<QuestionPage1> {
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Sorular'),
            actions: [
              IconButton(
                  onPressed: () {
                    showAlertDialogScore(context);
                  },
                  icon: const Icon(Icons.home))
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/cpu.png'),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  autofocus: true,
                  decoration:
                      const InputDecoration(hintText: 'Cevabı buraya yazınız.'),
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  controller: answer,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (answer.text == 'cpu') {
                      score++;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuestionPage2()));
                    } else if (answer.text.isEmpty) {
                      showAlertDialogNull(context);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuestionPage2()));
                    }
                  },
                  child: const Text('Tamam')),
            ],
          ),
        ));
  }
}

class QuestionPage2 extends StatefulWidget {
  const QuestionPage2({Key? key}) : super(key: key);

  @override
  State<QuestionPage2> createState() => _QuestionPageState2();
}

class _QuestionPageState2 extends State<QuestionPage2> {
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Sorular'),
            actions: [
              IconButton(
                  onPressed: () {
                    showAlertDialogScore(context);
                  },
                  icon: const Icon(Icons.home))
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/motherboard.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(
                      'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      decoration: const InputDecoration(
                          hintText: 'Cevabı buraya yazınız.'),
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      controller: answer,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (answer.text == 'motherboard') {
                          score++;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage3()));
                        } else if (answer.text.isEmpty) {
                          showAlertDialogNull(context);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage3()));
                        }
                      },
                      child: const Text('Tamam')),
                ],
              ),
            ],
          ),
        ));
  }
}

class QuestionPage3 extends StatefulWidget {
  const QuestionPage3({Key? key}) : super(key: key);

  @override
  State<QuestionPage3> createState() => _QuestionPageState3();
}

class _QuestionPageState3 extends State<QuestionPage3> {
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Sorular'), actions: [
            IconButton(
                onPressed: () {
                  showAlertDialogScore(context);
                },
                icon: const Icon(Icons.home))
          ]),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/gpu.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(
                      'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      decoration: const InputDecoration(
                          hintText: 'Cevabı buraya yazınız.'),
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      controller: answer,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (answer.text == 'gpu') {
                          score++;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage4()));
                        } else if (answer.text.isEmpty) {
                          showAlertDialogNull(context);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage4()));
                        }
                      },
                      child: const Text('Tamam')),
                ],
              ),
            ],
          ),
        ));
  }
}

class QuestionPage4 extends StatefulWidget {
  const QuestionPage4({Key? key}) : super(key: key);

  @override
  State<QuestionPage4> createState() => _QuestionPageState4();
}

class _QuestionPageState4 extends State<QuestionPage4> {
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Sorular'), actions: [
            IconButton(
                onPressed: () {
                  showAlertDialogScore(context);
                },
                icon: const Icon(Icons.home))
          ]),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/psu.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(
                      'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      decoration: const InputDecoration(
                          hintText: 'Cevabı buraya yazınız.'),
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      controller: answer,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (answer.text == 'psu') {
                          score++;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage5()));
                        } else if (answer.text.isEmpty) {
                          showAlertDialogNull(context);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage5()));
                        }
                      },
                      child: const Text('Tamam')),
                ],
              ),
            ],
          ),
        ));
  }
}

class QuestionPage5 extends StatefulWidget {
  const QuestionPage5({Key? key}) : super(key: key);

  @override
  State<QuestionPage5> createState() => _QuestionPageState5();
}

class _QuestionPageState5 extends State<QuestionPage5> {
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Sorular'), actions: [
            IconButton(
                onPressed: () {
                  showAlertDialogScore(context);
                },
                icon: const Icon(Icons.home))
          ]),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/ssd.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(
                      'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      decoration: const InputDecoration(
                          hintText: 'Cevabı buraya yazınız.'),
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      controller: answer,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (answer.text == 'ssd') {
                          score++;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage6()));
                        } else if (answer.text.isEmpty) {
                          showAlertDialogNull(context);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage6()));
                        }
                      },
                      child: const Text('Tamam')),
                ],
              ),
            ],
          ),
        ));
  }
}

class QuestionPage6 extends StatefulWidget {
  const QuestionPage6({Key? key}) : super(key: key);

  @override
  State<QuestionPage6> createState() => _QuestionPageState6();
}

class _QuestionPageState6 extends State<QuestionPage6> {
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Sorular'), actions: [
            IconButton(
                onPressed: () {
                  showAlertDialogScore(context);
                },
                icon: const Icon(Icons.home))
          ]),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/ram.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(
                      'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      decoration: const InputDecoration(
                          hintText: 'Cevabı buraya yazınız.'),
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      controller: answer,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (answer.text == 'ram') {
                          score++;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage7()));
                        } else if (answer.text.isEmpty) {
                          showAlertDialogNull(context);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage7()));
                        }
                      },
                      child: const Text('Tamam')),
                ],
              ),
            ],
          ),
        ));
  }
}

class QuestionPage7 extends StatefulWidget {
  const QuestionPage7({Key? key}) : super(key: key);

  @override
  State<QuestionPage7> createState() => _QuestionPageState7();
}

class _QuestionPageState7 extends State<QuestionPage7> {
  TextEditingController answer = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: light ? lightTheme : darkTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Sorular'), actions: [
            IconButton(
                onPressed: () {
                  showAlertDialogScore(context);
                },
                icon: const Icon(Icons.home))
          ]),
          body: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image.asset('images/hdd.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(
                      'Yukarıda görünen bileşenin adı nedir? (motherboard,cpu,gpu,ram,ssd,hdd,psu)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      decoration: const InputDecoration(
                          hintText: 'Cevabı buraya yazınız.'),
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      controller: answer,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (answer.text == 'hdd') {
                          score++;
                          showAlertDialogScore(context);
                        } else if (answer.text.isEmpty) {
                          showAlertDialogNull(context);
                        } else {
                          showAlertDialogScore(context);
                        }
                      },
                      child: const Text('Tamam')),
                ],
              ),
            ],
          ),
        ));
  }
}
