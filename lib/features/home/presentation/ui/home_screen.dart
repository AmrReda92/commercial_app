import 'package:commercial_app/core/app_images.dart';
import 'package:commercial_app/core/app_style.dart';
import 'package:commercial_app/features/home/presentation/widgets/gridView_vertical.dart';
import 'package:commercial_app/features/home/presentation/widgets/list_horizental_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/list_horizental_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

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
              ListHorizentalText(
                selectedIndex: selectedIndex,
                onTapItem: (index){
                  setState(() {
                    selectedIndex=index;
                  });
                },
              ),
              SizedBox(height: 33,),
              ListHorizentalCategories(

              ),
              SizedBox(height: 33,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0x0DF95B1C),
                  borderRadius: BorderRadius.circular(4),
                ),child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 9),
                  child: Row(
                  children: [
                    SvgPicture.asset(AppImages.check),
                    SizedBox(width: 4,),
                    Expanded(child: Text("شحن مجاني",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff3A813F)),)),
                    Text("لأى عرض تطلبه دلوقتى !",style: AppStyle.primaryFont10,),

                  ],
                                ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(child: GridviewVertical())



            ],
          ),
        ),
      ),
    );
  }
}
