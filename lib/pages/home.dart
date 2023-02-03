import 'package:flutter/material.dart';

// Crear home para una aplicacion de lista de tareas diarias  con opciones de agregar, editar y eliminar tareas

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de tareas'),
      ),
      body: const Center(
        child: Text('Lista de tareas'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agregar tarea
        },
        tooltip: 'Agregar tarea',
        child: const Icon(Icons.add),
      ),
    );
  }
}
