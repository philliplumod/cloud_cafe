// class CafeModel {
//   final String? id;
//   final String name;
//   final String city;

//   CafeModel({this.id, required this.name, required this.city});

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'city': city,
//     };
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class CafeModel {
  final String? id;
  final String name;
  final String city;

  const CafeModel({this.id, required this.name, required this.city});

  toJson() {
    return {
      'name': name,
      'city': city,
    };
  }

  factory CafeModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return CafeModel(
      id: document.id,
      name: data['name'],
      city: data['city'],
    );
  }
}
