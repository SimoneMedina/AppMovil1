
import 'package:flutter/material.dart';
import '../controladores/numero_controlador.dart';

class Ejercicio4Vista extends StatefulWidget {
  const Ejercicio4Vista({super.key});

  @override
  State<Ejercicio4Vista> createState() => _Ejercicio4VistaState();
}

class _Ejercicio4VistaState extends State<Ejercicio4Vista> {
  final TextEditingController entrada = TextEditingController();
  final NumeroControlador controlador = NumeroControlador();
  String resultado = '';

  void calcular() {
    setState(() {
      resultado = controlador.verificarParImpar(entrada.text);
    });
  }

  void limpiar() {
    setState(() {
      entrada.clear();
      resultado = '';
    });
  }

  @override
  void dispose() {
    entrada.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Par o impar')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Determinar si un número es par o impar',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: entrada,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcular,
              child: const Text('Calcular'),
            ),
            ElevatedButton(
              onPressed: limpiar,
              child: const Text('Limpiar'),
            ),
            const SizedBox(height: 20),
            Text(
              resultado,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
