
import 'package:flutter/material.dart';
import 'vistas/bienvenida_vista.dart';
import 'vistas/menu_vista.dart';
import 'vistas/ejercicio1_vista.dart';
import 'vistas/ejercicio2_vista.dart';
import 'vistas/ejercicio3_vista.dart';
import 'vistas/ejercicio4_vista.dart';
import 'vistas/ejercicio5_vista.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios Numéricos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BienvenidaVista(),
        '/menu': (context) => const MenuVista(),
        '/ejercicio1': (context) => const Ejercicio1Vista(),
        '/ejercicio2': (context) => const Ejercicio2Vista(),
        '/ejercicio3': (context) => const Ejercicio3Vista(),
        '/ejercicio4': (context) => const Ejercicio4Vista(),
        '/ejercicio5': (context) => const Ejercicio5Vista(),
      },
    );
  }
}
