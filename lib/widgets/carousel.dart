import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class MyCorousel extends StatelessWidget {
  final List<String> imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnOVw3dkHts-JGpw885gwLJJablhy6LZidQg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7ziyFbcbJ4xwWQnSVqG9KU4iV9pL1HF6VEQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJqdnDZYexWo7aiHtGJR9O3fqKyVOqTgMlgg&s',
    'https://media.istockphoto.com/id/1276740597/photo/indian-traditional-gold-necklace.jpg?s=612x612&w=0&k=20&c=OYp1k0OVJObYq9hqVK_r6NwYa_W54km4nya1R-ovIUY=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16/9,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            viewportFraction: 0.8,
          ),
          items: imageList.map((item) => Container(
            child: Center(
              child: Image.network(item, fit: BoxFit.cover, width: 1000),
            ),
          )).toList(),
        ),
      ),
    );
  }
}