import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta'),
      ),
      body: Center(
        child: Text('Configuración de la cuenta')
        ),
    );
  }
}