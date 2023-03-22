

import 'package:flutter/material.dart';
import 'package:soft_waves/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffef8b20), Color(0xffff4a4a)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.2,0.8]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions:  [
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.search)),
            ],
          //backgroundColor:  const Color(0xFFEF8B20),
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
            ],
          ),
        )
      ),
    );
  }
}