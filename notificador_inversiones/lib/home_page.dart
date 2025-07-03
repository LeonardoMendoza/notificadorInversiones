// Esto puede estar en el mismo archivo o en otro como 'pantalla_principal.dart'
import 'package:flutter/material.dart';
import 'widget_test.dart';
//import 'home_page.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Principal')),
      body: Center(
        child: Column(children: [Text('¡Bienvenido a la pantalla principal!'),
        MiBotonPersonalizado(
            texto: 'Texto del botón',
            onPressed: () {
              // Acción al hacer clic
            },
          )
        ]),
      ),
    );
  }
}