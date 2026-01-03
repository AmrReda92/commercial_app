import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/app_images.dart';
import '../../../../core/app_style.dart';

class CustomContainerVertical extends StatelessWidget {
  final String item ;
  const CustomContainerVertical({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BoxBorder.all(width: 2,color: Color(0x1A000000)),
          borderRadius: BorderRadius.circular(4)
      ), child: Column(
      children: [
        AspectRatio(
            aspectRatio: 1 / 1.3,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4)),
                child: Image.asset(
                  item, fit: BoxFit.cover,))
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            spacing: 8,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text("جاكيت من الصوف مطروز", style: AppStyle
                          .primaryFont14,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,)),
                  SvgPicture.asset(AppImages.offer)
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text(
                    "32,000,000جم/60,000,000", style: AppStyle
                      .fontGridVert14, maxLines: 1, overflow: TextOverflow
                      .ellipsis,)),
                  SvgPicture.asset(AppImages.favourite)
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(AppImages.fire),
                  SizedBox(width: 4,),
                  Text("تم بيع 3.3k+", style: AppStyle.fontGridVert14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(AppImages.badge),
                  Spacer(),
                  SvgPicture.asset(AppImages.toCart),
                  SizedBox(width: 12,),
                  Image.asset(AppImages.logoComp)
                ],
              ),
            ],
          ),
        )
      ],
    ),
    );
  }
}
