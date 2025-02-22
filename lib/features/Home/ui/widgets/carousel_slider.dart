import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/features/Home/ui/widgets/carousel_slider_item.dart';
import 'package:furniture_app/features/onboarding/ui/widgets/dotes_indecator.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) =>     setState(() {
                currentIndex=index;
              }),
              height: 199.h, autoPlay: true,
              viewportFraction: 1,
              autoPlayAnimationDuration:const Duration(seconds: 3),
              // autoPlayCurve: Curves.bounceOut,
              autoPlayInterval: const Duration(seconds: 3),
            ),
            items: List.generate(pathImage.length, (index) {
          
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: CarouselSliderItem(
                  pathImage: pathImage[index],
                ),
                
              );
              
            })),
            verticalSpace(16)
            ,Center(child: DotesIndecator(height: 8,width: 8,radius: 8,currentIndex:currentIndex ,))
      ],
    );
  }
}

List<String> pathImage = [
  "assets/images/carouselSlider_image1.png",
  "assets/images/carouselSlider_image2.png",
  "assets/images/carouselSlider_image2.png",
];
