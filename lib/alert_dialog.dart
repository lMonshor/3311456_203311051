import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/questions.dart';

import 'main_screen.dart';

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
    content: Text("Skorunuz: $score"),
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

showAlertDialogSuccess(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("Tamam"),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text("Başarılı"),
    content: const Text("Tema başarılı bir şekilde değiştirildi."),
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
