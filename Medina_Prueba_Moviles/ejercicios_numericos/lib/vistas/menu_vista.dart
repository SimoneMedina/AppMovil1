
import 'package:flutter/material.dart';

class MenuVista extends StatelessWidget {
  const MenuVista({super.key});

  @override
  Widget build(BuildContext context) {
    final ejercicios = [
      ('Número primo', '/ejercicio1'),
      ('Factorial', '/ejercicio2'),
      ('Número capicúa', '/ejercicio3'),
      ('Par o impar', '/ejercicio4'),
      ('Suma de dígitos', '/ejercicio5'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de ejercicios'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Selecciona un ejercicio',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          for (final ejercicio in ejercicios)
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.calculate,
                  color: Colors.indigo,
                ),
                title: Text(ejercicio.$1),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.pushNamed(context, ejercicio.$2);
                },
              ),
            ),
        ],
      ),
    );
  }
}
