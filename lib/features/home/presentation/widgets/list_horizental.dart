import 'package:commercial_app/features/home/presentation/widgets/custom_container.dart';
import 'package:flutter/material.dart';


class ListHorizental extends StatelessWidget {
  const ListHorizental({super.key});

  static const List<String> items =[
    "كل العروض",
    "ملابس",
    "أكسسوارات",
    "الكترونيات",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomContainer(item: items[index])
            );
          }
      ),
    );
  }
}
