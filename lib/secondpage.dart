import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  static const String route = '/secondpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
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
