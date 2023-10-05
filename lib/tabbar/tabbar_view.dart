import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TbView extends StatefulWidget {
  const TbView({super.key});

  @override
  State<TbView> createState() => _TbViewState();
}

class _TbViewState extends State<TbView> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);

  int currentIndex = 0;

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
        backgroundColor: Colors.teal[700],
        bottom: TabBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 4.5,
          indicatorColor: Colors.teal[600],
          isScrollable: true,
          tabs: const [
            SizedBox(
              width: 24,
              child: Tab(
                icon: Icon(Icons.groups),
              ),
            ),
            SizedBox(
                width: 70,
                child: Tab(
                  child: Text("Chats"),
                )),
            SizedBox(
              width: 70,
              child: Tab(
                child: Text("Status"),
              ),
            ),
            SizedBox(
              width: 70,
              child: Tab(
                child: Text("Calls"),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        dragStartBehavior: DragStartBehavior.down,
        physics: const ScrollPhysics(
          parent: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast,
          ),
        ),
        controller: tabController,
        children: const [
          Center(child: Text("Komunitas")),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAGIKgqPAEy0ulaFGYtNDNO3wY0TVS0KBqpDCxlZ1Jcm3%3Ds900-c-k-c0x00ffffff-no-rj&f=1&nofb=1&ipt=c5e3837dc10cea975efd77b74dc600bfb6e5cd13ab99ec0b13cedf6b170fbe65&ipo=images"),
                ),
                title: Text(
                  "Naswan Ganteng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  "Halo bro, lagi dimana? nongkrong yuk..",
                ),
                trailing: Text("23:00"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAGIKgqPAEy0ulaFGYtNDNO3wY0TVS0KBqpDCxlZ1Jcm3%3Ds900-c-k-c0x00ffffff-no-rj&f=1&nofb=1&ipt=c5e3837dc10cea975efd77b74dc600bfb6e5cd13ab99ec0b13cedf6b170fbe65&ipo=images"),
                ),
                title: Text(
                  "Naswan Ganteng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  "Halo bro, lagi dimana? nongkrong yuk..",
                ),
                trailing: Text("23:00"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAGIKgqPAEy0ulaFGYtNDNO3wY0TVS0KBqpDCxlZ1Jcm3%3Ds900-c-k-c0x00ffffff-no-rj&f=1&nofb=1&ipt=c5e3837dc10cea975efd77b74dc600bfb6e5cd13ab99ec0b13cedf6b170fbe65&ipo=images"),
                ),
                title: Text(
                  "Naswan Ganteng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  "Halo bro, lagi dimana? nongkrong yuk..",
                ),
                trailing: Text("23:00"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAGIKgqPAEy0ulaFGYtNDNO3wY0TVS0KBqpDCxlZ1Jcm3%3Ds900-c-k-c0x00ffffff-no-rj&f=1&nofb=1&ipt=c5e3837dc10cea975efd77b74dc600bfb6e5cd13ab99ec0b13cedf6b170fbe65&ipo=images"),
                ),
                title: Text(
                  "Naswan Ganteng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  "Halo bro, lagi dimana? nongkrong yuk..",
                ),
                trailing: Text("23:00"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAGIKgqPAEy0ulaFGYtNDNO3wY0TVS0KBqpDCxlZ1Jcm3%3Ds900-c-k-c0x00ffffff-no-rj&f=1&nofb=1&ipt=c5e3837dc10cea975efd77b74dc600bfb6e5cd13ab99ec0b13cedf6b170fbe65&ipo=images"),
                ),
                title: Text(
                  "Naswan Ganteng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  "Halo bro, lagi dimana? nongkrong yuk..",
                ),
                trailing: Text("23:00"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAGIKgqPAEy0ulaFGYtNDNO3wY0TVS0KBqpDCxlZ1Jcm3%3Ds900-c-k-c0x00ffffff-no-rj&f=1&nofb=1&ipt=c5e3837dc10cea975efd77b74dc600bfb6e5cd13ab99ec0b13cedf6b170fbe65&ipo=images"),
                ),
                title: Text(
                  "Naswan Ganteng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  "Halo bro, lagi dimana? nongkrong yuk..",
                ),
                trailing: Text("23:00"),
              ),
            ],
          ),
          Center(
            child: Text("Status"),
          ),
          Center(
            child: Text("Calls"),
          ),
        ],
      ),
      floatingActionButton: currentIndex == 1
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.chat),
              backgroundColor: Colors.teal[600],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
