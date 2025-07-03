import 'package:flutter/material.dart';

class MiCardPersonalizada extends StatelessWidget {
  final String titulo;
  final String parrafo1;
  final String parrafo2;
  final void Function(String)? onPressed;

  const MiCardPersonalizada({
    Key? key,
    required this.titulo,
    required this.parrafo1,
    required this.parrafo2,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed?.call(titulo),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(titulo), Text(parrafo1), Text(parrafo2)],
          ),
        ),
      ),
    );
  }
}
