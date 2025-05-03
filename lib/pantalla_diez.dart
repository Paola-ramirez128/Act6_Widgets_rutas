import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Modal Bottom Sheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
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
      ),
    );
  }
}
