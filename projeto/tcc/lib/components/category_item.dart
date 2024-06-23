// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tcc/models/categoria.dart';
import 'package:tcc/routes/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Categoria category;

  const CategoryItem({super.key, required this.category});

  void _selectCategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoriesMealsScreen(category: category); // retorna a clase que deseja
    //     },
    //   ),
    // );
    switch (category.id) {
      case 1:
        Navigator.of(context).pushNamed(
          AppRoutes.CATEGOREIS_MEALS,
          arguments: category,
        );
        break;
      case 2:
        Navigator.of(context).pushNamed(
          AppRoutes.CATEGOREIS_MEALS,
          arguments: category,
        );
        break;
      case 3:
        Navigator.of(context).pushNamed(
          AppRoutes.CRYPTO_LEARNING,
          arguments: category,
        );
        break;
      case 4:
        Navigator.of(context).pushNamed(
          AppRoutes.CATEGOREIS_MEALS,
          arguments: category,
        );
        break;
    }
  }

  // InkWell monitora o click nas categorias
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {_selectCategory(context)},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            category.img,
            height: 170,
          ),
          Text(category.titulo),
        ],
      ),
    );
  }
}
