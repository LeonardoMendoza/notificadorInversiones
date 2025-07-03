// Esto puede estar en el mismo archivo o en otro como 'pantalla_principal.dart'
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Principal')),
      body: Center(
        child: Text('¡Bienvenido a la pantalla principal!'),
      ),
    );
  }
}