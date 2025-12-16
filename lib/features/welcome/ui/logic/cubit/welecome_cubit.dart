import 'package:bloc_flutter_develop/features/welcome/ui/logic/cubit/welecome_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState());

  void changePage(int page) {
    emit(WelcomeState(page: page));
  }
}
