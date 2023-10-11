import 'package:flutter/material.dart';
import 'package:flutter_section2/Custom%20UI/CustomCard.dart';
import 'package:flutter_section2/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = <ChatModel>[
    ChatModel(
      name: "Mobile Development with Flutter",
      isGroup: true,
      currentMessage: "Hi Everyone",
      time: "12:00",
      icon: const ImageIcon(AssetImage("images/groups.png")),
    ),
    ChatModel(
      name: "Caitlin Halderman",
      isGroup: false,
      currentMessage: "Morning",
      time: "05:00",
      icon: const ImageIcon(AssetImage("images/person.png")),
    ),
    ChatModel(
      name: "Rachel Florencia",
      isGroup: false,
      currentMessage: "Pulang Sayang",
      time: "12:00",
      icon: const ImageIcon(AssetImage("images/person.png")),
    ),
    ChatModel(
      name: "Wendy Walters",
      isGroup: false,
      currentMessage: "Hallo",
      time: "11:00",
      icon: const ImageIcon(AssetImage("images/person.png")),
    ),
    ChatModel(
      name: "HOLYDREAMS MUI CLAN",
      isGroup: true,
      currentMessage: "Login lah",
      time: "02:00",
      icon: const ImageIcon(AssetImage("images/groups.png")),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF075E54),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
