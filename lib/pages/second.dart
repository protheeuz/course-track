import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    bool light = false;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              // This bool value toggles the switch.
              value: light,
              activeColor: Colors.red,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light = value;
                });
              },
            ),
            const Text("Ini adalah Second Page"),
          ],
        ),
      ),
    );
  }
}
