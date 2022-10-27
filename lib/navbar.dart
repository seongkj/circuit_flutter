import 'package:flutter/material.dart';

import 'friendpage.dart';
import 'myapp.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      height: double.infinity,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // 친구 목록 버튼
                padding: EdgeInsets.only(top: 30),
                // child: ElevatedButton(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FriendPage()),
                    );
                  },
                  style: ButtonStyle(
                    mouseCursor: MaterialStateProperty.all<MouseCursor>(
                        SystemMouseCursors.click),
                    foregroundColor: MaterialStateProperty.all((Colors.black)),
                  ),
                  child: Icon(Icons.person, size: 35),
                ),
              ),
              Container(
                // 채팅 목록 버튼
                padding: EdgeInsets.only(top: 30),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  style: ButtonStyle(
                    mouseCursor: MaterialStateProperty.all<MouseCursor>(
                        SystemMouseCursors.click),
                    foregroundColor: MaterialStateProperty.all((Colors.black)),
                  ),
                  child: Icon(Icons.chat_bubble_outline, size: 35),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(Icons.more_horiz, size: 35),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Icon(Icons.notifications_none, size: 35),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Icon(Icons.settings, size: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
