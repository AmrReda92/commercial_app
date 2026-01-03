import 'package:commercial_app/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_style.dart';

class CustomCategoryHorizontal extends StatelessWidget {
  final CategoryModel categoryModel;
  const CustomCategoryHorizontal({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),child: Image.asset(categoryModel.image),
              ),
            ),
            SizedBox(height: 8,),
            Text( categoryModel.category,style: AppStyle.primaryFont14Category,)
          ],

        )
    );
  }
}
