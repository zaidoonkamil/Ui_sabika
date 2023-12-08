import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabika2/core/navigation_bar/cubit/states.dart';
import 'package:sabika2/features/basket/view/basket.dart';
import 'package:sabika2/features/home/view/home.dart';
import 'package:sabika2/features/news/view/news.dart';
import 'package:sabika2/features/order/view/order.dart';
import 'package:sabika2/features/profile/view/profile.dart';

class SabikaCubit extends Cubit<SabikaStates> {
  SabikaCubit() : super(SabikaInitialState());

  static SabikaCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const Home(),
    const Basket(),
    const News(),
    const Order(),
    const Profile(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(SabikaChangeBottomNavState());
  }

}