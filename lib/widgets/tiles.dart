import 'package:flutter/material.dart';

class ListCafeTiles extends StatelessWidget {
  const ListCafeTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Cafe Name'),
      subtitle: const Text('Cafe Location'),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {},
      ),
    );
  }
}
