import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('SoftWaves'),
              accountEmail: Text('softwaves@account.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFF005BC0),
                child: Text('S', style: TextStyle(fontSize: 40)),
                ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff005bc0), Color(0xff22133c)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
        )
      
                ),
              ),
            GestureDetector(
              child: ListTile(
                leading: const Icon(Icons.account_circle, color: Colors.black),
                title: const Text('Cuenta'),
                onTap: (() => Navigator.pushNamed(context, 'account')
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.black),
              title: const Text('Settings'),
              onTap: (() {}
            ),
           ),
           
         ],
       ),
    );
  }
}