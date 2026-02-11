import 'package:flutter/material.dart';

void main() => runApp(const AppFerreteria());

class AppFerreteria extends StatelessWidget {
  const AppFerreteria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Empleados(),
    );
  }
} // Fin clase AppFerreteria

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ferreteria el Muela",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.green),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Aquí se usan tus links de GitHub convertidos a formato "raw" para que Flutter los detecte como imagen
            buildUserCard(
              'Misael', 
              'Chalan', 
              'https://raw.githubusercontent.com/angel-muela/Im-genes-para-flutter-6J-12-febrero-2026/main/empleado1.jpg'
            ),
            buildUserCard(
              'Juan Carlos', 
              'Atención al Cliente', 
              'https://raw.githubusercontent.com/angel-muela/Im-genes-para-flutter-6J-12-febrero-2026/main/empleado2.jpg'
            ),
            buildUserCard(
              'Ricardo', 
              'Encargado de Almacén', 
              'https://raw.githubusercontent.com/angel-muela/Im-genes-para-flutter-6J-12-febrero-2026/main/empleado3.jpeg'
            ),
          ],
        ),
      ),
    );
  }

  // Función para crear las tarjetas
  Widget buildUserCard(String title, String subtitle, String imageUrl) {
    return Card(
      color: Colors.orangeAccent[700],
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(imageUrl), 
          radius: 25,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.green,
        ),
      ),
    );
  }
} // Fin clase Empleados