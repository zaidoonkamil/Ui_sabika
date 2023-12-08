import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sabika2/core/navigation_bar/cubit/cubit.dart';
import 'package:sabika2/core/navigation_bar/cubit/states.dart';
import 'package:sabika2/core/navigation_bar/navigation_bar.dart';
import 'package:sabika2/core/network/local_save_storege/cache_helper.dart';
import 'package:sabika2/core/network/remote/dio_helper.dart';
import 'package:sabika2/core/styles/themes.dart';
import 'package:sabika2/features/auth/login/view/login.dart';
import 'package:sabika2/features/auth/register.dart/view/register.dart';
import 'package:sabika2/features/privacy_app/view/privacy_app.dart';
import 'package:sabika2/features/request_order/view/request_order.dart';
import 'package:sabika2/features/splash/view/splash.dart';
import 'package:sabika2/features/welcome/welcome.dart';

import 'bloc_observer.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SabikaCubit(),
      child: BlocConsumer<SabikaCubit, SabikaStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeService().lightTheme,
            darkTheme: ThemeService().darkTheme,
            themeMode: ThemeService().getThemeMode(),
            home: WelcomeScreen(),
          );
        },
      ),
    );
  }
}
