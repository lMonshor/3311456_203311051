import 'package:flutter/material.dart';

showAlertDialogWrong(BuildContext context) {
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
      "Hata",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content: const Text(
      "Yanlış ya da eksik bilgi!",
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
