import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Cloud Cafe'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Cafe Name'))),
                const SizedBox(width: 16.0),
                const Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Cafe Location'))),
                const SizedBox(width: 8.0),
                ElevatedButton(onPressed: () {}, child: const Text('Add Cafe'))
              ],
            ),

            // fetch cafes from firestore and display them here
            // if there are no cafes, display a message
            ListView.builder(itemBuilder: (context, index) {
              return ListTile();
            })
          ],
        ),
      ),
    );
  }
}
