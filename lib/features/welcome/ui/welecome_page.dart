// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_flutter_develop/features/welcome/ui/widgets/custom_page_view.dart';
import 'package:bloc_flutter_develop/features/welcome/ui/widgets/welcome_dot_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bloc_flutter_develop/core/helepers/spacing.dart';
import 'package:bloc_flutter_develop/features/welcome/ui/logic/cubit/welecome_cubit.dart';
import 'package:bloc_flutter_develop/features/welcome/ui/logic/cubit/welecome_state.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<WelcomeCubit, WelcomeState>(
          builder: (context, state) {
            return Stack(
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    context.read<WelcomeCubit>().changePage(value);
                  },
                  children: [
                    CustomPageView(
                      index: 1,
                      pageController: pageController,
                      imagePath: 'assets/images/reading.png',
                      title: 'First See Learning',
                      subTitle:
                          'Forget about a for of paper all knowledge in one learning',
                      buttonText: 'Next',
                    ),
                    CustomPageView(
                      index: 2,
                      pageController: pageController,
                      imagePath: 'assets/images/boy.png',
                      title: 'Connect With Everyone',
                      subTitle:
                          'Always keep in touch with your tutor about any question you have',
                      buttonText: 'Next',
                    ),
                    CustomPageView(
                      index: 3,
                      pageController: pageController,
                      imagePath: 'assets/images/man.png',
                      title: 'Always Fascinated Learning',
                      subTitle:
                          'Anywhere, anytime. The time is at your discretion so study whenever you want',
                      buttonText: 'Get Started',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 140,
                  left: 0,
                  right: 0,
                  child: WelcomeDotsIndicator(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
