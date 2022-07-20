import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<MusicPage> {
  final urlImages = [
    'https://i.ytimg.com/vi/iHu5ThBsNfI/maxresdefault.jpg',
    'https://i.ytimg.com/vi/Eu1NptVss8w/maxresdefault.jpg',
    'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/ce/14/fa/ce14fa74-78c2-485a-1697-9276bc164f87/8718857702108.png/1200x1200bf-60.jpg',
    'https://3.bp.blogspot.com/-2QE_GXvCroU/XKR9zFCZpJI/AAAAAAAADic/KkwrCSbb7mQKQbmMUt0gnGecboua690pwCLcBGAs/s1600/Screenshot_2019-04-03-14-52-06-15.png',
    'https://i.pinimg.com/originals/3a/b4/9d/3ab49d3e0bda55beefc0cc4d3a65951d.jpg',
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
