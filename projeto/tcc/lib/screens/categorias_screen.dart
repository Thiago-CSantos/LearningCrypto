import 'package:flutter/material.dart';
import 'package:tcc/models/categoria.dart';

class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({super.key});

  // chama essa tela depois de escolher a categoria
  @override
  Widget build(BuildContext context) {
    final categoria = ModalRoute.of(context)?.settings.arguments as Categoria; // valores passados pela rota

    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.titulo),
      ),
      body: const Center(
        child: Text('Receita por categoria '),
      ),
    );
  }
}
