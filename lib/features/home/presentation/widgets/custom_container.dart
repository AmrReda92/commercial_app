import 'package:commercial_app/core/app_style.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final bool isSelected;
  final String item ;
  final void Function()? onTap;
  const CustomContainer({super.key, required this.item, required this.isSelected, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected? Color(0x0DF95B1C) : Colors.white  ,
            borderRadius: BorderRadius.circular(4),
            border: BoxBorder.all(width:1.2, color: Color(0x1A000000)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(item,style:isSelected? AppStyle.primaryFont14active:AppStyle.primaryFont14 ,)  ,
        ),
      ),
    );
  }
}

//Color(0x0DF95B1C)