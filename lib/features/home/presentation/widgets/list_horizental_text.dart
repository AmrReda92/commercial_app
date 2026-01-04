import 'package:commercial_app/features/home/presentation/widgets/custom_container.dart';
import 'package:flutter/material.dart';


class ListHorizentalText extends StatelessWidget {
  final int selectedIndex;
  final void Function(int)? onTapItem ;

  const ListHorizentalText({super.key, required this.selectedIndex, this.onTapItem,});

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
          itemCount:items.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomContainer(
                  isSelected : selectedIndex==index,
                  item: items[index],
                  onTap: ()=> onTapItem!(index),
              )
            );
          }
      ),
    );
  }
}
