import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
              onPressed: (){
      Navigator.pop(context);
      },
              child: const Text('Screen 1'),
            )
          ],
        ),
      ),
    );
  }
}
