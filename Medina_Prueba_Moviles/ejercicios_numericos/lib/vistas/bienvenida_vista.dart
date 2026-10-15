
import 'package:flutter/material.dart';

class BienvenidaVista extends StatelessWidget {
  const BienvenidaVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios Numéricos'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.calculate,
                size: 100,
                color: Colors.indigo,
              ),
              const SizedBox(height: 20),
              const Text(
                'Prueba Móviles',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Ejercicios',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/menu');
                },
                child: const Text('Comenzar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
