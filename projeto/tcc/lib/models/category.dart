import 'dart:ui';

class Category{

  final String id;
  final String title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    this.color = const Color(0xFF000000),
  });
}