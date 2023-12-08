import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'colors.dart';

class ThemeService{

  final lightTheme = ThemeData(
    dialogBackgroundColor: lightScaffoldBackgroundColor,
    scaffoldBackgroundColor: lightScaffoldBackgroundColor,
    backgroundColor: Colors.grey,
    cardColor: lightContainerGridOfCompleteShopColor,
    primaryColor: primaryColor,
    fontFamily: 'Tajawal',
    brightness: Brightness.light,
    dividerColor: lightDivideColor,

    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal
      ),
      enabledBorder: InputBorder.none,
      border: InputBorder.none,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: backgroundColorBottomNavigationBar,
        selectedItemColor: primaryColor,
        unselectedItemColor: scaffoldBackgroundColor,
        showUnselectedLabels: false
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.dark(),
        buttonColor: Colors.black87
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black87,
      dividerColor: primaryColor,

    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: primaryColor,
      ),
      backgroundColor: lightScaffoldBackgroundColor,
      titleTextStyle: TextStyle(
          fontSize: 20,
          color: primaryColor,
          fontWeight: FontWeight.bold
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 16, color: primaryColor, fontWeight: FontWeight.bold,
        fontFamily: 'Tajawal',
      ),
      bodyText2: TextStyle(
          fontSize: 16,
          color: lightPrimaryTextColor,
          fontFamily: 'Tajawal',
        fontWeight: FontWeight.bold,
      ),
      headline1: TextStyle(
          fontSize: 16,
          color: hintTextColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal'
      ),
    ),
  );

  final darkTheme = ThemeData(
    dialogBackgroundColor: scaffoldBackgroundColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    primaryColor: primaryColor,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: hintTextFormColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      hintStyle: TextStyle(
          color: hintTextFormColor,
          fontSize: 16,
          fontWeight: FontWeight.normal
      ),
      enabledBorder: InputBorder.none,
      border: InputBorder.none,
    ),
    backgroundColor: Colors.black,
    fontFamily: 'Tajawal',
    brightness: Brightness.dark,
    dividerColor: divideColor,
    cardColor: cardDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: backgroundColorBottomNavigationBarDark,
        selectedItemColor: primaryColor,
        unselectedItemColor: unselectedItemColor,
        showUnselectedLabels: false
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.light(),
        buttonColor: Colors.white
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      dividerColor: primaryColor,

    ),
    appBarTheme: AppBarTheme(
      elevation: 10,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: primaryColor,
      ),
      backgroundColor: scaffoldBackgroundColor,
      titleTextStyle: TextStyle(
          fontSize: 20,
          color: primaryColor,
          fontWeight: FontWeight.bold
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 16,
        color: primaryColor,
        fontWeight: FontWeight.bold,
        fontFamily: 'Tajawal',
      ),
      bodyText2: TextStyle(
          fontSize: 16,
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal'
      ),
      headline1: TextStyle(
          fontSize: 16,
          color: hintTextColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal'
      ),
    ),
  );

  final _getStorage = GetStorage();

  final _darkThemeKey = 'isDarkTheme';

  void saveThemeData(bool isDarkMode) {

    _getStorage.write(_darkThemeKey, isDarkMode);

  }
  bool isSavedDarkMode() {
    return _getStorage.read(_darkThemeKey) ?? true;
  }

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}

