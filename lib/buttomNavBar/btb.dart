import 'package:flutter/material.dart';

class KelasButtonNavBar extends StatelessWidget {
  const KelasButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Button Navigation Bar"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 50,
            width: 50,
            color: Colors.teal,
          ),
        ),
        bottomNavigationBar: Container(
          decoration: ShapeDecoration(
            color: Colors.teal.withOpacity(1.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.black),
            ],
          ),
        ));
  }
}
