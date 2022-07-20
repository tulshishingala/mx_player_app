import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<NewsPage> {
  final urlImages = [
    'https://i.ytimg.com/vi/Xmm3Kr5P1Uw/hqdefault_live.jpg',
    'https://www.twentyfournews.com/wp-content/uploads/2020/05/24-thumbnail-3.png',
    'https://thelogicalindian.com/h-upload/2020/01/28/1600x960_166877-abpweb.jpg',
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
