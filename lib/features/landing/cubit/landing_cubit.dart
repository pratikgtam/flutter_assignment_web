import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_state.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(const LandingState());
  final length = 4;

// This method will change the landing page based on the index
  void changePage(int index) {
    final item = LandingPageItems.values[index];
    emit(state.copyWith(landingPage: item));
  }
}
