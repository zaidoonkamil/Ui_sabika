import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sabika2/features/basket/view/basket.dart';
import 'package:sabika2/features/home/view/home.dart';
import 'package:sabika2/features/news/view/news.dart';
import 'package:sabika2/features/order/view/order.dart';
import 'package:sabika2/features/profile/view/profile.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class SabikaLayout extends StatelessWidget {
  const SabikaLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SabikaCubit, SabikaStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = SabikaCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: FloatingNavBar(
              borderRadius: 30,
              horizontalPadding: 10.0,
              unselectedIconColor: Theme.of(context).scaffoldBackgroundColor,
              hapticFeedback: true,
              selectedIconColor: Theme.of(context).primaryColor,
              showTitle: false,
              color: Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
              index: cubit.currentIndex,
              items: [
                FloatingNavBarItem(iconData: Ionicons.home, page: const Home(), title: 'Home'),
                FloatingNavBarItem(iconData: Icons.shopping_cart_sharp, page: const Basket(), title: 'Doctors'),
                FloatingNavBarItem(iconData: Ionicons.newspaper, page: const News(), title: 'Reminders'),
                FloatingNavBarItem(iconData: Ionicons.bag_handle_outline, page: const Order(), title: 'Records'),
                FloatingNavBarItem(iconData: Ionicons.person_outline, page: const Profile(), title: 'Records'),
              ],
            ),
          ),
        );
      },
    );
  }
}
