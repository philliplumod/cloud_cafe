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
  // Future<void> readCafe() async {
  //   Query readDb = FirebaseFirestore.instance.collection("cafes");

  //   try {
  //     QuerySnapshot querySnapshot = await readDb.get();

  //     for (var doc in querySnapshot.docs) {
  //       debugPrint(doc.data().toString());
  //     }
  //   } catch (e) {
  //     debugPrint('Error reading cafe: $e');
  //   }
  // }

  // read by city
  Future<void> readCafe() async {
    Query readDb = FirebaseFirestore.instance
        .collection("cafes")
        .where("city", isEqualTo: "CDO");

    try {
      QuerySnapshot querySnapshot = await readDb.get();

      for (var doc in querySnapshot.docs) {
        debugPrint(doc.data().toString());
      }
    } catch (e) {
      debugPrint('Error reading cafe: $e');
    }
  }
}
