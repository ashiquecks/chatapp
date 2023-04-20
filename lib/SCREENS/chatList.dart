import 'package:chatapp/WIDGETS/cards.dart';
import 'package:chatapp/const.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Chat "),
      ),
      body: Column(
        children: [
          chatListCard(
            textName: "Anjana",
            lastMessage: "Correct answer",
            dateOfchat: "yesterday",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
            imageLink:
                'https://pbs.twimg.com/profile_images/1282755157655265280/mXAO4Xij_400x400.jpg',
          ),
          chatListCard(
            textName: "Amal",
            lastMessage: "please Wait",
            dateOfchat: "october 14",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
            imageLink:
                'https://i.guim.co.uk/img/media/1bfca2f2296413ab780e2453625e1ed04cdf45f3/0_182_3430_2058/master/3430.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=b84c09b5ffa650b69e5ed3a3982855e2',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          size: 30,
          color: colorWhite,
        ),
      ),
    );
  }
}
