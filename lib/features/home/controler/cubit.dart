import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabika2/features/home/controler/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool viewCard=true;

  void changeViewCard() {
    viewCard = !viewCard;
    emit(HomeChangeCardState());
  }

}