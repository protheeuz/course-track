import 'package:flutter/material.dart';

void main() {
  runApp(const ExtWgt());
}

class ExtWgt extends StatelessWidget {
  const ExtWgt({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(onPressed: () {}),
      appBar: AppBar(
        title: const Text("Extract Widget"),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          ListColors(nama: "Merah", warna: Colors.red),
          ListColors(nama: "Kuning", warna: Colors.yellow),
          ListColors(nama: "Hijau", warna: Colors.green),
          ListColors(nama: "Biru", warna: Colors.blue),
          ListColors(nama: "Ungu", warna: Colors.purple),
          ListColors(nama: "Coklat", warna: Colors.brown),
          ListColors(nama: "Whatsapp", warna: Colors.teal),
        ],
      ),
    );
  }
}

// ini adalah contoh extract widget / reusable widget
class ListColors extends StatelessWidget {
  const ListColors({
    super.key,
    required this.nama,
    required this.warna,
  });

  final String nama;
  final Color? warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: warna,
      child: Center(
        child: Text(
          nama,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
