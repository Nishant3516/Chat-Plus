import 'package:chatplus/Widgets/navigators.dart';
import 'package:chatplus/pages/chat_page.dart';
import 'package:flutter/material.dart';

class GroupTile extends StatelessWidget {
  final String userName;
  final String groupId;
  final String groupName;
  const GroupTile(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.userName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigators().nextScreen(
            context,
            ChatPage(
              groupId: groupId,
              groupName: groupName,
              userName: userName,
            ));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: ListTile(
          leading: CircleAvatar(
            child: Text(groupName.substring(0, 1).toUpperCase()),
          ),
          title: Text(groupName),
          subtitle: Text("Join the conservation as ${userName}"),
        ),
      ),
    );
  }
}
