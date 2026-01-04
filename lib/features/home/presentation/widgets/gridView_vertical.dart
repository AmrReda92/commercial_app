import 'package:commercial_app/features/home/presentation/widgets/custom_container_vertical.dart';
import 'package:flutter/material.dart';

class GridviewVertical extends StatelessWidget {
  const GridviewVertical({super.key});

  static const List<String> items = [
    "assets/images/cloth1.png",
    "assets/images/cloth2.png",
    "assets/images/cloth3.png",
    "assets/images/cloth1.png",
    "assets/images/cloth2.png",
    "assets/images/cloth3.png",
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
             crossAxisSpacing: 12,
             childAspectRatio: .49
        ),
        itemBuilder: (context,index) {
        final item = items[index];
          return CustomContainerVertical(item: item);
        }
    );
  }
}
