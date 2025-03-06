import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
  int CurrentIndex = 0;
  void changeCurrentIndex(int index) {
    CurrentIndex = index;
    emit(IndexChange());
  }
}
