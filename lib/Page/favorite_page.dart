import 'package:flutter/material.dart';
import 'package:movies_app/widgets/custom_nav_bar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/video.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
            child: Text(
          'Bạn chưa có phim yêu thích',
          style: TextStyle(
            fontSize: 25,
            color: Colors.pink,
          ),
        )),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
