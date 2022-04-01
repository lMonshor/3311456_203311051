import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/main_screen.dart';
import 'package:lmonshor_tech_tips/questions.dart';

showAlertDialogScore(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text(
      "Tamam",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
      score = 0;
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text(
      "Bravo! testi başarıyla tamamladınız.",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content: Text(
      "Skorunuz: $score",
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      okButton,
    ],
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogNull(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text(
      "Tamam",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text(
      "Olmaaaz!",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content: const Text(
      "Bir şeyler yazmalısınız.",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      okButton,
    ],
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogInfo(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text(
      "Tamam",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const QuestionPage1()));
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text(
      "Test bölümüne hoşgeldiniz!",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content: const Text(
      "Her soru 1 puandır ve yanlış cevaplar puanınızı azaltmaz. Lütfen cevap olarak parantez içerisinde belirtilen cevaplardan birini yazınız.",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      okButton,
    ],
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
