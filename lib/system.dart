import 'package:firebase_auth/firebase_auth.dart';

class System {
  String id;
  final String brand;
  final String model;
  final String email;

  System({
    this.id = '',
    required this.brand,
    required this.model,
    required this.email,
  });
  final user = FirebaseAuth.instance.currentUser!;
  Map<String, dynamic> toJson() => {
        'id': id,
        'brand': brand,
        'model': model,
        'email': email,
      };
  static System fromJson(Map<String, dynamic> json) => System(
      id: json['id'],
      brand: json['brand'],
      model: json['model'],
      email: json['email']);
}
