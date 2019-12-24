import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockData.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Constants.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(mockData[index].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  mockData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  mockData[index].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                mockData[index].message,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
