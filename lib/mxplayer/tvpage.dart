import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TvPage extends StatefulWidget {
  const TvPage({Key? key}) : super(key: key);

  @override
  State<TvPage> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<TvPage> {
  final urlImages = [
    'https://qqcdnpictest.mxplay.com/pic/626ab135f5e9a787233eb3b3684df625/en/16x9/640x360/test_pic1640246035453.webp',
    'https://qqcdnpictest.mxplay.com/pic/0e53c22e40fb19252ec238d6a5d2c7b4/en/16x9/640x360/test_pic1638147386330.jpg',
    'https://www.serialupdates.me/wp-content/uploads/2022/04/Superstar-Singer-2-Contestants-Names-Selected-Singers.jpg',
    'https://qqcdnpictest.mxplay.com/pic/532811afe2120f3179d01a75cf27f099/en/16x9/640x360/test_pic1643264591181.jpg',
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
            height: 200,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
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
