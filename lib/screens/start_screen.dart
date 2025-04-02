import 'package:componentes/screens/first_screen.dart';
import 'package:componentes/screens/second_screen.dart';
import 'package:componentes/screens/third_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _selectendIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App de componentes UI'),),
      body: Center(child: Text('Ventana de inicial'),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectendIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.important_devices_sharp),
            label: 'Inicio'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Perfil'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: 'Configuración'),
        ],
        onTap: (index) {
          if(index == 0){
            setState(() {
              _selectendIndex = index;
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
            });
          }
          else if(index == 1){
              setState(() {
              _selectendIndex = index;
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            });
          }
          else if(index == 2){
              setState(() {
              _selectendIndex = index;
              Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));
            });
          }
        },
      ),
    );
  }
}
