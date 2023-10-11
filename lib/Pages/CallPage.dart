import 'package:flutter/material.dart';
import 'package:flutter_section2/Custom%20UI/CallPage/HeadOwnCall.dart';

class CallPage extends StatefulWidget {
  CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xFF075E54),
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Icon(Icons.add_call),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const HeadOwnCall(),
            label("Recent"),
            callCard(
              "Rachel Florencia",
              "images/person.png",
              Icons.call_made,
              Colors.green,
              "Yesterday, 2:08 pm",
            ),
            callCard(
              "Wendy Walters",
              "images/person.png",
              Icons.call_received,
              Colors.red,
              "8 October, 11:13 am",
            ),
            callCard(
              "Caitlin Halderman",
              "images/person.png",
              Icons.call_made,
              Colors.green,
              "8 October, 12:20 am",
            ),
            callCard(
              "Caitlin Halderman",
              "images/person.png",
              Icons.call_made,
              Colors.green,
              "7 October, 10:57 pm",
            ),
            callCard(
              "Caitlin Halderman",
              "images/person.png",
              Icons.call_received,
              Colors.red,
              "7 October, 10:49 pm",
            ),
            callCard(
              "Caitlin Halderman",
              "images/person.png",
              Icons.call_made,
              Colors.green,
              "7 October, 6:28 pm",
            ),
            callCard(
              "Caitlin Halderman",
              "images/person.png",
              Icons.call_made,
              Colors.green,
              "6 October, 11:45 pm",
            ),
            callCard(
              "Wendy Walters",
              "images/person.png",
              Icons.call_received,
              Colors.red,
              "6 October, 8:41 pm",
            ),
            callCard(
              "Rachel Florencia",
              "images/person.png",
              Icons.call_received,
              Colors.red,
              "6 October, 4:04 pm",
            ),
          ],
        ),
      ),
    );
  }

  Widget callCard(String name, String imageName, IconData iconData,
      Color iconColor, String time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 26,
        child: Image.asset(
          imageName,
          height: 37,
          width: 37,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
            size: 20,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 12.8),
          )
        ],
      ),
      trailing: const Icon(
        Icons.call,
        size: 28,
        color: Colors.teal,
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
