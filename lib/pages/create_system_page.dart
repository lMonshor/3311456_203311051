import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lmonshor_tech_tips/pages/main_screen.dart';
import 'package:lmonshor_tech_tips/system.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  final controllerBrand = TextEditingController();
  final controllerModel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
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
        title: const Text('Sistem ekle'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          const Icon(
            Icons.computer,
            size: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: controllerBrand,
              decoration: const InputDecoration(labelText: 'Marka'),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: controllerModel,
              decoration: const InputDecoration(labelText: 'Model'),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 1, 215, 191),
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: () {
              final system = System(
                brand: controllerBrand.text,
                model: controllerModel.text,
                email: user.email!,
              );
              createSystem(system);
              Navigator.pop(context);
            },
            child: const Text('Ekle'),
          )
        ],
      ),
    );
  }

  InputDecoration decoration(String label) => InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      );

  Future createSystem(System system) async {
    final docSystem = FirebaseFirestore.instance.collection('systems').doc();
    system.id = docSystem.id;

    final json = system.toJson();
    await docSystem.set(json);
  }
}
