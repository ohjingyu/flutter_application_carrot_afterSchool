import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  int price;

  DetailPage({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail'),
      ),
      body: Text('$price'),
    );
  }
}
