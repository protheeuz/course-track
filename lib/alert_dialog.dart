import 'package:flutter/material.dart';

class AlertDPage extends StatelessWidget {
  const AlertDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  "Ini adalah title",
                ),
                content: const Text("Ini adalah konten"),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("CANCEL"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Alert Dialog"),
        ),
      ),
    );
  }
}
