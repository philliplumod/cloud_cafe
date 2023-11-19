import 'package:cloud_cafe/model/cafe_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CafeRepository {
// this is a update base copilot
  // Future<void> updateCafe(CafeModel cafeModel) {
  //   DocumentReference db =
  //       FirebaseFirestore.instance.collection("cafes").doc(cafeModel.id);
  //   return db
  //       .set(cafeModel.toJson())
  //       .then((docRef) => debugPrint('Cafe Update '));
  // }
  final db = FirebaseFirestore.instance;

  Future<void> createCafe(CafeModel cafeModel) {
    return db
        .collection("cafes")
        .add(cafeModel.toJson())
        .then((value) => debugPrint('Cafe added'));
  }

// read all the data
  Future<void> readCafe() async {
    Query readDb = FirebaseFirestore.instance.collection("cafes");

    try {
      QuerySnapshot querySnapshot = await readDb.get();

      for (var doc in querySnapshot.docs) {
        debugPrint(doc.data().toString());
      }
    } catch (e) {
      debugPrint('Error reading cafe: $e');
    }
  }

  // Future<Map<String, dynamic>?> readCafe(CafeModel cafeModel) async {
  //   try {
  //     QuerySnapshot<Map<String, dynamic>> querySnapshot =
  //         await FirebaseFirestore.instance
  //             .collection("cafes")
  //             .where('name', isEqualTo: cafeModel.name)
  //             .where('city', isEqualTo: cafeModel.city)
  //             .get();

  //     if (querySnapshot.docs.isNotEmpty) {
  //       // Assuming there's only one document with the given name and city
  //       final cafeData = querySnapshot.docs.first.data();
  //       debugPrint(cafeData['name'].toString());
  //       return cafeData;
  //     } else {
  //       debugPrint('Document does not exist or does not have any data');
  //       return null; // Return null if no document is found
  //     }
  //   } catch (e) {
  //     // Handle errors, e.g., network issues or Firestore errors
  //     debugPrint('Error reading cafe: $e');
  //     return null; // Return null in case of an error
  //   }
  // }
}
