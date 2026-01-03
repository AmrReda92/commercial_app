import 'package:commercial_app/features/home/data/models/category_model.dart';
import 'package:commercial_app/features/home/presentation/widgets/custom_category_horizontal.dart';
import 'package:flutter/material.dart';

class ListHorizentalCategories extends StatelessWidget {
  const ListHorizentalCategories({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.length,
          itemBuilder: (context,index){
            final CategoryModel cat = item[index];
            return CustomCategoryHorizontal(categoryModel: cat);
          }
      ),
    );
  }
}


