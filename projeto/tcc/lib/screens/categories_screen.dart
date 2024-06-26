import 'package:flutter/material.dart';
import 'package:tcc/components/category_item.dart';
import 'package:tcc/data/dummy_data.dart';
import 'package:tcc/screens/bottom_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  // pagina Home
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Hello Username !', style: TextStyle(color: Colors.white)),
            Icon(Icons.settings),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: Text('Example in code  </>',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  fontFamily: 'RobotoCondensed')),
        ),
        toolbarHeight: 160,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
      ),
      bottomSheet: const BottomBar(),
      body: Center(
        child: GridView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.8,
            crossAxisSpacing: 1,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_ILLUSTRATIONS.map((categoria) {
            print("THIAGO: $categoria");
            return CategoryItem(category: categoria);
          }).toList(),
        ),
      ),
    );
  }
}
