import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda ventana')),
      body: Center(
        child: Column(
          children: [
            Text('Una imagen de la red'),
            Image.network(
              'https://i.pinimg.com/736x/2c/da/10/2cda10005cf446ce7630d90c6bdaa31b.jpg',
              width: 400,
              // fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
