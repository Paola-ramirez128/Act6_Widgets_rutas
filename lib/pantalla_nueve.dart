import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Map",
          style: TextStyle(
            color: Colors.black, // Letra negra
            fontSize: 25.0, // Tamaño de la letra 25
          ),
        ),
        backgroundColor: Color(0xff9bd2ec),
        centerTitle: true,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Colors.black), // Icono de retroceso
          onPressed: () => Navigator.of(context).pop(), // Acción para regresar
        ),
      ),
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: body[_currentIndex],
            ),
            // Botón de regresar agregado aquí
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Regresar'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
              label: 'Porfile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
