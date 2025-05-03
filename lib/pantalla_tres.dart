import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 250, // Reduje un poco para hacer espacio al botón
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          ),
          SizedBox(height: 20), // Espacio entre el contenedor y el botón
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9bd2ec), // Mismo color que la AppBar
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: Text(
              'Regresar',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Regresa a la pantalla anterior
            },
          ),
        ],
      ),
    );
  }
}
