// Esto puede estar en el mismo archivo o en otro como 'pantalla_principal.dart'
import 'package:flutter/material.dart';
import 'widget_test.dart';
import 'search_bar.dart';
import 'symbol_card.dart';
//import 'home_page.dart';

class home_page extends StatelessWidget {
  final TextEditingController _busquedaController = TextEditingController();

  home_page({super.key}); // ¡Agrega el key!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla Principal')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '¡Bienvenido a la pantalla principal!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            MiBotonPersonalizado(texto: 'Texto del botón', onPressed: () {}),
            const SizedBox(height: 16),
            SearchSymbolsBar(
              controller: _busquedaController,
              hint: 'Buscar símbolos...',
              onChanged: (texto) {
                print('Texto actual: $texto');
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Mis Tarjetas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),

            // Aquí el Wrap que acomoda varias cards en filas
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: List.generate(10, (index) {
                return MiCardPersonalizada(
                  titulo: 'Título ${index + 1}',
                  parrafo1: 'Párrafo del número ${index + 1}',
                  parrafo2: 'Otro párrafo para ${index + 1}',
                  onPressed: (titulo) {
                    print('Número: $index, Título: $titulo');
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
