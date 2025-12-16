import 'package:bloc_flutter_develop/core/routing/app_route_name.dart';
import 'package:bloc_flutter_develop/features/welcome/ui/logic/cubit/welecome_cubit.dart';
import 'package:bloc_flutter_develop/features/welcome/ui/welecome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRouteName.kWelcomePage,
        name: AppRouteName.kWelcomePage,
        builder: (context, state) => BlocProvider(
          create: (context) => WelcomeCubit(),
          child: WelcomePage(),
        ),
      ),
    ],

    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: Scaffold(body: Center(child: Text(state.error.toString()))),
      );
    },
  );
}
