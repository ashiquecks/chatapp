import 'package:chatapp/MODAL/message.dart';
import 'package:chatapp/const.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Room"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              shrinkWrap: true,
              reverse: true,
              order: GroupedListOrder.DESC,
              padding: const EdgeInsets.all(8),
              elements: messges,
              groupBy: (messge) => DateTime(2022),
              groupHeaderBuilder: (Message messages) => const SizedBox(),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  color: message.isSentByMe ? Colors.green : colorWhite,
                  margin: message.isSentByMe
                      ? const EdgeInsets.only(left: 40, top: 10)
                      : const EdgeInsets.all(10),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      message.text,
                      style: TextStyle(
                          color: message.isSentByMe ? colorWhite : colorBlack),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 12,
            margin: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: widgetSize.width / 1.5,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'Type your message here...'),
                      onSubmitted: (text) {
                        final message = Message(
                            text: text, date: DateTime.now(), isSentByMe: true);

                        setState(() {
                          messges.add(message);
                        });
                      },
                    ),
                  ),
                ),
                const CircleAvatar(
                  child: Icon(Icons.camera),
                ),
                const CircleAvatar(
                  child: Icon(Icons.mic),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
