
import 'package:flutter/material.dart';
import '../controladores/numero_controlador.dart';

class Ejercicio2Vista extends StatefulWidget {
  const Ejercicio2Vista({super.key});

  @override
  State<Ejercicio2Vista> createState() => _Ejercicio2VistaState();
}

class _Ejercicio2VistaState extends State<Ejercicio2Vista> {
  final TextEditingController entrada = TextEditingController();
  final NumeroControlador controlador = NumeroControlador();
  String resultado = '';

  void calcular() {
    setState(() {
      resultado = controlador.calcularFactorial(entrada.text);
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
      appBar: AppBar(title: const Text('Factorial')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Calcular el factorial de un número',
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
