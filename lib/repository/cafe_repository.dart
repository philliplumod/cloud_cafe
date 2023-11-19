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

  Future<void> createCafe(CafeModel cafeModel) {
    final db = FirebaseFirestore.instance;
    return db
        .collection("cafes")
        .add(cafeModel.toJson())
        .then((value) => debugPrint('Cafe added'));
  }
}
