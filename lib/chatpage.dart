import 'package:flutter/material.dart';

import 'chatroomlist.dart';
import 'navbar.dart';

// 채팅목록페이지
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavBar(),
        Expanded(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, bottom: 25),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '채팅',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Icon(Icons.search, size: 30),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Icon(Icons.forum, size: 30),
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Icon(Icons.add_comment, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ChatRoomList(),
                      ChatRoomList(),
                      ChatRoomList(),
                      ChatRoomList(),
                      ChatRoomList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
