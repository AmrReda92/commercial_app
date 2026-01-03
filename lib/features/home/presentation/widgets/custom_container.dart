import 'package:commercial_app/core/app_style.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String item ;
  const CustomContainer({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: BoxBorder.all(width:1.2, color: Color(0x1A000000)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(item,style: AppStyle.primaryFont14,),
      ),
    );
  }
}
