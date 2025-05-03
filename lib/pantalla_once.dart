import 'package:flutter/material.dart';

class PantallaOnce extends StatelessWidget {
  const PantallaOnce({Key? key}) : super(key: key);

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myWidget(),
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
        ),
      ),
    );
  }
}

myWidget() => Builder(builder: (BuildContext context) {
      return Text(
        'Text whit Theme',
        style: Theme.of(context).textTheme.displayLarge,
      );
    });
