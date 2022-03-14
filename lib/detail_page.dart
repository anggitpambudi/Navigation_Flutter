import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DetailPage extends StatelessWidget {
  // final Services services;
  final String image;
  final String name;
  final int price;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    this.price = 120000,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Books'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(image),
            const SizedBox(height: 16,),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 16,),
            Text("$price"),
          ],
        ),
      ),
    );
  }
}