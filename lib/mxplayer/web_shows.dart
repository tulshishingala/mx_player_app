import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WedShowsPage extends StatefulWidget {
  const WedShowsPage({Key? key}) : super(key: key);

  @override
  State<WedShowsPage> createState() => _WedShowsPageState();
}

class _WedShowsPageState extends State<WedShowsPage> {
  final urlIamges = [
    'https://qqcdnpictest.mxplay.com/pic/289c88055f4df3c09a095f44eb6445d3/en/16x9/640x360/test_pic1653993617217.jpg',
    'https://static.spotboye.com/uploads/induri_2021-6-15-11-55-32_thumbnail.jpg',
    'https://etimg.etb2bimg.com/photo/70173432.cms',
    'https://qqcdnpictest.mxplay.com/pic/43e59d1558d48b11c1a46ea774e91150/en/16x9/640x360/test_pic1608643941994.webp',
    'https://qqcdnpictest.mxplay.com/pic/775ad3b682fde6a608559a60986b230d/en/16x9/640x360/test_pic1651047818915.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
          itemCount: urlIamges.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlIamges[index];
            return buildImage(urlImage, index);
          },
          options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              autoPlay: true,
              reverse: true,
              height: 200,
              autoPlayInterval: const Duration(seconds: 2))),
    );
  }

  Widget buildImage(String urlImage, int index) {
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
