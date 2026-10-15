
import 'package:flutter/material.dart';
import '../controladores/numero_controlador.dart';

class Ejercicio5Vista extends StatefulWidget {
  const Ejercicio5Vista({super.key});

  @override
  State<Ejercicio5Vista> createState() => _Ejercicio5VistaState();
}

class _Ejercicio5VistaState extends State<Ejercicio5Vista> {
  final TextEditingController entrada = TextEditingController();
  final NumeroControlador controlador = NumeroControlador();
  String resultado = '';

  void calcular() {
    setState(() {
      resultado = controlador.sumarDigitos(entrada.text);
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
      appBar: AppBar(title: const Text('Suma de dígitos')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Calcular la suma de los dígitos',
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
