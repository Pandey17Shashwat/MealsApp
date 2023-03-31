import 'package:flutter/material.dart';

import './dummy.dart';
import 'category_item.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
    children: DUMMY_CATEGORIES.map((catData) => CategoryItem(title : catData.title, color : catData.color)).toList(), 
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3/2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      ),);
  }
}