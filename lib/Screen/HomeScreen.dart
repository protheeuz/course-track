import 'package:flutter/material.dart';
import 'package:flutter_section2/Pages/CallPage.dart';
import 'package:flutter_section2/Pages/ChatPage.dart';
import 'package:flutter_section2/Pages/StatusPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController =
      TabController(length: 4, vsync: this, initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return const [
              PopupMenuItem(
                value: "New groups",
                child: Text("New group"),
              ),
              PopupMenuItem(
                value: "New broadcast",
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                value: "Linked devices",
                child: Text("Linked devices"),
              ),
              PopupMenuItem(
                value: "Starred messages",
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
                value: "Settings",
                child: Text("Settings"),
              ),
            ];
          }),
        ],
        backgroundColor: const Color(0xFF075E54),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: const [
            Tab(icon: Icon(Icons.groups)),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Text("Groups"),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }
}
