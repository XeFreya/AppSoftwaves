

import 'package:flutter/material.dart';
import 'package:soft_waves/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)),

          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.settings)),
        ],

        backgroundColor: Colors.purple,
        title: const Text('Softwaves App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [

            //Logo del cliente
            Logo(),
            //Slider del menú
            MenuSlider(),
            MenuSlider(),
            MenuSlider()
            

          ],
        ),
      )
    );
  }
}