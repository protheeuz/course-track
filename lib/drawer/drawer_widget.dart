import 'package:flutter/material.dart';

class KelasDrawer extends StatelessWidget {
  const KelasDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawerrrrrrr"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Test Drawerrr"),
      ),
      drawer: Container(
        color: Colors.black38,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: Colors.teal,
              child: const Text(
                "Data NASWANNNNN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                itemBuilder: (context, index) => const ListTile(
                  leading: CircleAvatar(),
                  title: Text("Naswan sayang Ilham"),
                  subtitle: Text("llham sayang Naswan"),
                  trailing: Icon(Icons.heart_broken),
                ),
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
    );
  }
}
