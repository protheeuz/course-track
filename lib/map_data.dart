import 'package:flutter/material.dart';

class KelasMap extends StatelessWidget {
  // const KelasMap({super.key});

  final List<Map<String, dynamic>> myProfile = [
    {
      "name": "Naswan",
      "title": "Software Engineer",
      "fColors": ["Ungu", "Coklat", "Kuning"],
    },
    {
      "name": "Rizky",
      "title": "Machine Learning Engineer",
      "fColors": ["Ungu", "Coklat", "Kuning"],
    },
    {
      "name": "Ilham",
      "title": "DevOps Engineer",
      "fColors": ["Ungu", "Coklat", "Kuning"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map of Data"),
        centerTitle: true,
      ),
      body: ListView(
          children: myProfile.map((data) {
        List myfColors = data['fColors'];
        return Card(
          color: Colors.grey.withOpacity(0.1),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${data['name']}"),
                          const SizedBox(
                            height: 8,
                          ),
                          Text("${data['title']}"),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: myfColors.map((color) {
                    return Container(
                      color: Colors.white,
                      height: 20,
                      width: 40,
                      child: Text(color),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        );
      }).toList()),
    );
  }
}
