import 'package:bloc_flutter_develop/core/helepers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    Key? key,
    required this.pageController,
    required this.index,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.buttonText,
  }) : super(key: key);

  final PageController pageController;
  final int index;
  final String imagePath;
  final String title;
  final String subTitle;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        verticalSpace(10),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 375.w,
          child: Text(
            subTitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpace(120),

        InkWell(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {}
          },
          child: Container(
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.white, fontSize: 20.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
