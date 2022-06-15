import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/system.dart';

class ReadSystems extends StatefulWidget {
  const ReadSystems({Key? key}) : super(key: key);

  @override
  State<ReadSystems> createState() => _ReadSystemsState();
}

class _ReadSystemsState extends State<ReadSystems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(title: const Text('Sistemler')),
      body: StreamBuilder<List<System>>(
          stream: readSystems(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
              return const Text('biseyler yanlis gitti');
            } else if (snapshot.hasData) {
              final systems = snapshot.data!;
              return ListView(
                children: systems.map(buildSystem).toList(),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

Stream<List<System>> readSystems() => FirebaseFirestore.instance
    .collection('systems')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => System.fromJson(doc.data())).toList());

Widget buildSystem(System system) => ListTile(
      leading: Text(system.brand.toString()),
      title: Text(system.model.toString()),
      subtitle: Text(system.email.toString()),
    );
