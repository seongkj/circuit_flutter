import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyTest(),
        bottomNavigationBar: MyBanner(),
      ),
    );
  }
}

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            // 네비 바
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
                      padding: EdgeInsets.only(top: 30),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Icon(Icons.person, size: 35),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
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
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '채팅',
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
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image(
                                image: AssetImage('img1.png'),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                children: [
                                  Text(
                                    '이름',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                  Text('채팅내용~~~'),
                                  Text('채팅'),
                                ],
                              ),
                            ),
                            Text('시간'),
                          ],
                        ),
                        Text('채팅 목록'),
                        Text('채팅 목록'),
                        Text('채팅 목록'),
                        Text('채팅 목록'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 광고배너
class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              Image(image: AssetImage('img1.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '여기는 광고배너',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '브라운 이미지',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
