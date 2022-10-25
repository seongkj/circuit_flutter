import 'package:flutter/material.dart';

import 'chatpage.dart';
import 'friendpage.dart';
import 'mybanner.dart';
import 'secondpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String route = '/chat';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        MyApp.route: (context) => MyApp(),
        FriendPage.route: (context) => FriendPage(),
        SecondPage.route: (context) => SecondPage(),
      },
      title: '카카오톡 flutter',
      home: Scaffold(
        body: ChatPage(),
        bottomNavigationBar: MyBanner(),
      ),
    );
  }
}
