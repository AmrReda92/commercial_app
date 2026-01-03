import 'package:commercial_app/core/app_images.dart';
import 'package:commercial_app/core/app_style.dart';
import 'package:commercial_app/features/home/presentation/widgets/list_horizental.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 45,),
              Row(
                children: [
                  Expanded(child: Text("أستكشف العروض",style: AppStyle.primaryFont16,)),
                  Text("الكل",style: AppStyle.font16Bold,),
                  SizedBox(width: 4,),
                  SvgPicture.asset(AppImages.arrow)
                ],
              ),
              SizedBox(height: 12,),
              ListHorizental(),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
