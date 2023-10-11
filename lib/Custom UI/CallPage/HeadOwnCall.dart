import 'package:flutter/material.dart';

class HeadOwnCall extends StatelessWidget {
  const HeadOwnCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(3.14 / 1.5),
            child: const CircleAvatar(
              radius: 27,
              backgroundColor: Color(0xFF075E54),
              child: Icon(Icons.link, color: Colors.white),
            ),
          ),
        ],
      ),
      title: const Text(
        "Create call link",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "Share a link for your WhatsApp call",
        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
      ),
    );
  }
}
