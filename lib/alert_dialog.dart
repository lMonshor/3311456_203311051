import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/main_screen.dart';
import 'package:lmonshor_tech_tips/questions.dart';

showAlertDialogScore(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("Tamam"),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
      score = 0;
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text("Bravo! testi başarıyla tamamladınız."),
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
    child: const Text("Tamam"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text("Olmaaaz!"),
    content: const Text("Bir şeyler yazmalısınız."),
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
