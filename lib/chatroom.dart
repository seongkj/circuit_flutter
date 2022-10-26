import 'package:flutter/material.dart';

import 'chatroomlist.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key});
  static const String route = '/chatroom';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ChatRoomList(),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'asdfadsfdsf',
                          style: TextStyle(
                              backgroundColor: Colors.yellow, fontSize: 20),
                        ),
                        Text('호우 20:10',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 10)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'asdfadsfdsf',
                          style: TextStyle(
                              backgroundColor: Colors.yellow, fontSize: 20),
                        ),
                        Text('호우 00:00',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 10)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'asdfadsfdsf',
                          style: TextStyle(
                              backgroundColor: Colors.yellow, fontSize: 20),
                        ),
                        Text('호우 00:00',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 10)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'input',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
