import 'package:flutter/material.dart';

class KelasButtomSheet extends StatelessWidget {
  const KelasButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => Container(
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            hoverColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          children: const [
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                            ListTile(
                              leading: CircleAvatar(),
                              title: Text("Naswan Love Xixixixixixixixxi"),
                              trailing: Text("00:00"),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          child: const Text("ButtomSheet Popup"),
        ),
      ),
    );
  }
}
