import 'package:flutter/material.dart';
import 'package:devfest_munich/user_json.dart';

class UserCard extends StatelessWidget {
  final UserJson user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(user.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.email),
            Text(user.phone),
            Text(user.website),
          ],
        ),
        leading: CircleAvatar(
          child: Text(user.name[0]),
        ),
      ),
    );
  }
}
