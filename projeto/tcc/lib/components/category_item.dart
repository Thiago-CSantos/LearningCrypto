// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tcc/models/category.dart';

class CategoryItem extends StatelessWidget {
  
  final Category category;

  const CategoryItem({
      super.key, 
      required this.category
    });
  
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(5),
      child: Text(category.title, style: Theme.of(context).textTheme.titleLarge),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.5),
            category.color,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        )
      ),
    );
  }

}