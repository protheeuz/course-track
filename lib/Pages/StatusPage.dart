import 'package:flutter/material.dart';
import 'package:flutter_section2/Custom%20UI/StatusPage/HeadOwnStatus.dart';
import 'package:flutter_section2/Custom%20UI/StatusPage/OtherStatus.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.greenAccent[100],
              elevation: 8,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.green[900],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFF075E54),
            elevation: 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Icon(Icons.camera_alt_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const HeadOwnStatus(),
            label("Recent updates"),
            const OtherStatus(
              name: "Caitlin Halderman",
              imageName: "images/Caitlin.jpg",
              time: "01:23",
              isSeen: false,
              statusNum: 1,
            ),
            const OtherStatus(
              name: "Rachel Florencia",
              imageName: "images/Rachel.jpg",
              time: "03:20",
              isSeen: false,
              statusNum: 2,
            ),
            label("Viewed updates"),
            const OtherStatus(
              name: "Wendy Walters",
              imageName: "images/Wendy.jpg",
              time: "07:03",
              isSeen: true,
              statusNum: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelname,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
