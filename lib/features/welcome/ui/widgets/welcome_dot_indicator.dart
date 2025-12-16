import 'package:bloc_flutter_develop/features/welcome/ui/logic/cubit/welecome_cubit.dart';
import 'package:bloc_flutter_develop/features/welcome/ui/logic/cubit/welecome_state.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeDotsIndicator extends StatelessWidget {
  const WelcomeDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeCubit, WelcomeState>(
      builder: (context, state) {
        return DotsIndicator(
          dotsCount: 3,
          position: state.page!.toDouble(),
          mainAxisAlignment: MainAxisAlignment.center,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: Colors.blue,
            size: Size.square(10.r),
            activeSize: Size(18.r, 10.r),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        );
      },
    );
  }
}
