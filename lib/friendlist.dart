import 'package:flutter/material.dart';

import 'friendlists.dart';
import 'navbar.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
                        '친구',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
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
                        FriendLists(),
                        FriendLists(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
