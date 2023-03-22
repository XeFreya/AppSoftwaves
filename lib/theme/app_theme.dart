import 'package:flutter/material.dart';

class AppTheme{

  static Color primary = const Color(0xFFEF8b20);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    //Color primario
    primaryColor: const Color(0xFFEF8b20),

    //AppBar theme
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0
    ),

    //TextButton theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.white)
    ),

    //Icon theme
    iconTheme: const IconThemeData(
      color: Colors.white
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xFFEF8b20),

    )
);

}