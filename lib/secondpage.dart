import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: null,
          child: Text('You have pressed the button times.'),
        ),
      ),
    );
  }
}
