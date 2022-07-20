import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarasoulSliderPage extends StatefulWidget {
  const CarasoulSliderPage({Key? key}) : super(key: key);

  @override
  State<CarasoulSliderPage> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarasoulSliderPage> {
  final urlImages = [
    'https://timesofindia.indiatimes.com/thumb/msid-81088768,width-1200,height-900,resizemode-4/.jpg',
    'https://www.socialketchup.in/wp-content/uploads/2022/04/17.png',
    'https://static.digit.in/OTT/v2/images/tr:w-1200/the-world-of-fantasy-767116.jpg',
    'https://qqcdnpictest.mxplay.com/pic/f1849312bcd5193039520ffa866d0604/en/16x9/640x360/test_pic1653298184789.jpg',
  ];
  List image = [
    'http://img.wynk.in/unsafe/320x180/top/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/3616845125203/1646425524/srch_believe_A10320WT042839597C.jpg',
    'https://static.toiimg.com/photo/msid-72470591/72470591.jpg',
    'https://1.bp.blogspot.com/-angy-6KnJSw/X_STWcyNq7I/AAAAAAAAFA0/TlEJSp2SlBsJ5Vli9NUJhXy-s3zdIeyDgCLcBGAsYHQ/s540/RadhaKrishna%2BMilan.png',
    'https://s2.dmcdn.net/v/T1m2Z1WnnVEeCmNMM/x360',
    'https://qqcdnpictest.mxplay.com/pic/270c118b2ea78a5f69855f7384f9d411/en/16x9/640x360/test_pic1617288977980.jpg',
    'https://qqcdnpictest.mxplay.com/pic/0e8d35f55dd44e887c2969295f6d5400/en/16x9/640x360/test_pic1587129027980.jpg',
  ];
  List image1 = [
    'http://img.wynk.in/unsafe/320x180/top/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/3616845125203/1646425524/srch_believe_A10320WT042839597C.jpg',
  ];
  List items = [
    'Audi Wadi Chhori',
    'Rangtari',
    'Achayutam kesavam',
    'maahi ve',
    'Deshi ni vaato videsh',
    'Aa chhe Party Song',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
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
                autoPlayInterval: const Duration(seconds: 2),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'You May Like',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                TextButton(onPressed: () {}, child: const Text('SEE MORE'))
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return _itemDemo(
                      image: image[i],
                      items: items[i],
                    );
                  }),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'MX Original wed Shows',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                TextButton(onPressed: () {}, child: const Text('SEE MORE'))
              ],
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: image1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, ind) {
                    return _getListItems(
                      image1: image1[ind],
                    );
                  }),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'You May Like',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                TextButton(onPressed: () {}, child: const Text('SEE MORE'))
              ],
            ),
          ],
        ),
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

  Widget _itemDemo({String? image, String? items}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Image(
            image: NetworkImage(image!),
            height: 120,
          ),
        ),
        Text(items!),
      ],
    );
  }

  Widget _getListItems({String? image1}) => Column(
        children: [Image(image: NetworkImage(image1!))],
      );
}
