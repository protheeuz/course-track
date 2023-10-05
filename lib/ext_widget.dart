import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Extract Widget"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            ColorsRectangle(text: "MERAH", warna: Colors.red),
            ColorsRectangle(text: "KUNING", warna: Colors.yellow),
            ColorsRectangle(text: "HIJAU", warna: Colors.green),
            ColorsRectangle(text: "BIRU", warna: Colors.blue),
            ColorsRectangle(text: "COKLAT", warna: Colors.brown),
            ColorsRectangle(text: "UNGU", warna: Colors.purple),
          ],
        ),
      ),
    ));
  }
}

// extract widget  => reusable widget.
class ColorsRectangle extends StatelessWidget {
  const ColorsRectangle({
    super.key,
    required this.text,
    required this.warna,
  });

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
