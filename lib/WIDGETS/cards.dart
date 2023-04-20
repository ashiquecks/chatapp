import 'package:chatapp/WIDGETS/texts.dart';
import 'package:flutter/material.dart';

Widget chatListCard({
  required String textName,
  required String lastMessage,
  required String dateOfchat,
  required String imageLink,
  required void Function() cardAction,
}) {
  return InkWell(
    onTap: cardAction,
    child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(imageLink),
      ),
      title: boldText(labelText: textName),
      subtitle: Text(lastMessage),
      trailing: colorText(labelText: dateOfchat),
    ),
  );
}
