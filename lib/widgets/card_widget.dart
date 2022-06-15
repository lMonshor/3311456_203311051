import 'package:flutter/material.dart';

Widget cardBuild(
        {required String image,
        required String title,
        required String subtitle}) =>
    Card(
      shadowColor: const Color.fromARGB(255, 1, 215, 191),
      elevation: 8,
      borderOnForeground: true,
      child: ListTile(
        leading: Image(
          image: AssetImage(image),
          width: 100,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.navigate_next),
      ),
    );

Widget cardBuild2({
  required IconData icon,
  required String title,
}) =>
    Card(
      shadowColor: const Color.fromARGB(255, 1, 215, 191),
      elevation: 8,
      borderOnForeground: true,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
