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
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    for (var i = 0; i < 7; i++) ...[
                      Chat(),
                    ],
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    maxLines: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5, left: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(Icons.sentiment_very_satisfied),
                            ),
                            IconButton(
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(Icons.content_paste),
                            ),
                            IconButton(
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(Icons.attach_file),
                            ),
                          ],
                        ),
                        Container(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                // backgroundColor: Colors.yellow,
                                ),
                            onPressed: () {
                              print('전송');
                            },
                            child: Text(
                              '전송',
                              style: TextStyle(color: Colors.pink),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'asdfadsfdsf',
            style: TextStyle(backgroundColor: Colors.yellow, fontSize: 20),
          ),
          Text(
            '오후 20:10',
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 10),
          ),
        ],
      ),
    );
  }
}
