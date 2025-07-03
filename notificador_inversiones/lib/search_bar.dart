import 'package:flutter/material.dart';

class SearchSymbolsBar extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final void Function(String)? onChanged;

  const SearchSymbolsBar({
    Key? key,
    required this.controller,
    this.hint = 'Buscar...',
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    ),
  );
}
}
