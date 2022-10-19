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
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Container(
          color: Colors.amber[100],
          height: 100,
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
          child: Row(
            children: [
              Image.asset('img1.png', width: 150),
              Container(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('asdf'),
                    Text('asdfsss'),
                    Text('asdf'),
                    Text('asdfs'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.favorite), Text('123')],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
