import 'package:flutter/material.dart';

class SbView extends StatelessWidget {
  const SbView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.all(30),
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                action: SnackBarAction(
                  label: "CANCEL",
                  textColor: Colors.white,
                  onPressed: () {
                    print("CANCEL DIPENCET!");
                  },
                ),
                content: const Text(
                  "Contoh SnackBar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
          child: const Text(
            "Show SnackBar",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
