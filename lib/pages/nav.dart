import 'package:flutter/material.dart';
import './home.dart';

class KelasNavigasi extends StatelessWidget {
  const KelasNavigasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: const Text("Navigation"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: const Text("NEXT >>>"),
        ),
      ),
    );
  }
}