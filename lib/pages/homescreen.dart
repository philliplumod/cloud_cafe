import 'package:cloud_cafe/model/cafe_model.dart';
import 'package:cloud_cafe/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:cloud_cafe/repository/cafe_repository.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final CafeRepository cafeRepository = CafeRepository();

  final TextEditingController cafeNameController = TextEditingController();
  final TextEditingController cafeLocationController = TextEditingController();

  // create
  void createCafe() {
    CafeModel cafeModel = CafeModel(
        name: cafeNameController.text, city: cafeLocationController.text);
    cafeRepository.createCafe(cafeModel);
    cafeNameController.clear();
    cafeLocationController.clear();
  }

  // read
  // void readCafe() {
  //   CafeModel cafeModel = CafeModel(
  //       name: cafeNameController.text, city: cafeLocationController.text);
  //   cafeRepository.readCafe(cafeModel);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloud Cafe'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: cafeNameController,
              decoration: const InputDecoration(
                  labelText: 'Cafe Name',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0))),
            ),
            const SizedBox(
                height: 16.0), // Add some spacing between text fields
            TextFormField(
              controller: cafeLocationController,
              decoration: const InputDecoration(
                  labelText: 'Cafe location',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0))),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    label: 'Create', onPressed: createCafe, color: Colors.blue),
                CustomButton(
                    label: 'Read',
                    onPressed: () {
                      cafeRepository.readCafe();
                    },
                    color: Colors.green),
                CustomButton(
                    label: 'Update',
                    onPressed: () {
                      debugPrint('Update');
                    },
                    color: Colors.orange),
                CustomButton(
                    label: 'Delete',
                    onPressed: () {
                      debugPrint('Delete');
                    },
                    color: Colors.red),
              ],
            )
          ],
        ),
      ),
    );
  }
}
