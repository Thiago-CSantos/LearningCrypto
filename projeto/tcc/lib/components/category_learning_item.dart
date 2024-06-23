import 'package:flutter/material.dart';
import 'package:tcc/models/categoria_learning.dart';

class CategoriaLearningItem extends StatelessWidget {
  final CategoriaLearning learning;

  const CategoriaLearningItem({super.key, required this.learning});

  void _selectLearning(BuildContext context) {
    print("TESTANDO: ${learning.img}");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectLearning(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(learning.img),
          Text(learning.titulo),
        ],
      ),
    );
  }
}
