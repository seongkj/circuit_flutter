import 'package:flutter/material.dart';

import 'friendlist.dart';
import 'mybanner.dart';

//  친구 목록 페이지
class FriendPage extends StatelessWidget {
  const FriendPage({super.key});
  static const String route = '/friend';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '카카오톡 친구 목록',
      home: Scaffold(
        body: FriendList(),
        bottomNavigationBar: MyBanner(),
      ),
    );
  }
}
