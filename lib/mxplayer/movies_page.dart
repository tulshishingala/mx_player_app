import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<MoviesPage> {
  final urlImages = [
    'https://qqcdnpictest.mxplay.com/pic/448f9063ac17c6f8d46443cf250a5706/en/16x9/640x360/39cb266f64cad7ab9e05ef5fdfc53825_1920x1080.jpg',
    'https://qqcdnpictest.mxplay.com/pic/f2490bd743f840bb4c340a356fff6a6f/en/16x9/1920x1080/test_pic1583315715464.jpg',
    'https://qqcdnpictest.mxplay.com/pic/7a17514ffb8a743b72cf0213a23483a6/en/16x9/640x360/556d5853b5bf69d09d182b384dc9870e_1920x1080.jpg',
    'https://qqcdnpictest.mxplay.com/pic/c45f3e39cd1fa87410a0d7e8f582cbe7/en/16x9/640x360/7336c072754284a5d1885baab9f444ee_1920x1080.jpg',
    'https://qqcdnpictest.mxplay.com/pic/dcf2f7e647aadb584705d896c5ac63ab/en/16x9/640x360/09d9bceabda32504aa8ce4df034b9d9e_1920x1080.jpg',
    'https://qqcdnpictest.mxplay.com/pic/385f435c38ded9f93f7d1ef6779f6e06/en/16x9/320x180/1e174fddc2e7f1b3135bb10e0c403f93_1920x1080.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImages(urlImage, index);
        },
        options: CarouselOptions(
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            height: 200,
            autoPlay: true,
            reverse: true,
            autoPlayInterval: const Duration(seconds: 2)),
      ),
    );
  }

  Widget buildImages(String urlImage, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 400,
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
