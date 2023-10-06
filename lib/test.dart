import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: const Text('WhahahahahtsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          indicatorColor: const Color.fromARGB(255, 22, 200, 114),
          indicatorWeight: 5.0,
          controller: tabController,
          tabs: const [
            Tab(icon: Icon(Icons.groups)),
            Tab(text: 'Chats'),
            Tab(text: 'Update'),
            Tab(text: 'Tlp'),
          ],
        ),
      ),
    );
  }
}
