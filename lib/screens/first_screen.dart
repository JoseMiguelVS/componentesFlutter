import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primera ventana')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Img1'),
            Image.asset(
              'assets/img/img1.jpg',
              width: 400,
            ),
            Text('Img2'),
            Image.asset(
              'assets/img/img2.jpg',
              width: 400,
            ),
          ],
        ),),
    );
  }
}
