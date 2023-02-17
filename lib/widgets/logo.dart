import 'package:flutter/material.dart';


class Logo extends StatelessWidget {
  const Logo({super.key});



  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: size.width * 0.7,
            height: size.height*0.3,
            color: Colors.blue,
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/300x400'),
              fit: BoxFit.cover,
              ),
          ),
        ),
      ),
    );
  }
}