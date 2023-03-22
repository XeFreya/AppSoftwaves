import 'package:flutter/material.dart';
import 'package:soft_waves/screens/screens.dart';
import 'package:soft_waves/theme/app_theme.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Softwaves_app',
      theme: AppTheme.lightTheme,
      initialRoute: 'home',
      routes: {
        'home':( _ ) =>  const HomeScreen(),
        'details':( _ ) => const DetailsScreen(),
        'account':(context) => const AccountScreen()
      },
      
    );
  }
}
