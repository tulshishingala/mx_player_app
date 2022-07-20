import 'package:flutter/material.dart';
import 'package:mx_player_app/mxplayer/carousel%20_slider.dart';
import 'package:mx_player_app/mxplayer/movies_page.dart';
import 'package:mx_player_app/mxplayer/musicpage.dart';
import 'package:mx_player_app/mxplayer/news.dart';
import 'package:mx_player_app/mxplayer/tvpage.dart';
import 'package:mx_player_app/mxplayer/web_shows.dart';

class MxPlayerP1 extends StatefulWidget {
  const MxPlayerP1({Key? key}) : super(key: key);

  @override
  State<MxPlayerP1> createState() => _MxPlayerP1State();
}

class _MxPlayerP1State extends State<MxPlayerP1>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List images = [
    'https://timesofindia.indiatimes.com/thumb/msid-81088768,width-1200,height-900,resizemode-4/.jpg',
    'https://www.socialketchup.in/wp-content/uploads/2022/04/17.png',
  ];
  List images1 = [
    'https://static.digit.in/OTT/v2/images/tr:w-1200/the-world-of-fantasy-767116.jpg',
    'https://qqcdnpictest.mxplay.com/pic/f1849312bcd5193039520ffa866d0604/en/16x9/640x360/test_pic1653298184789.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Padding(
            padding: EdgeInsets.only(right: 60),
            child: Text(
              "MXPLAYER",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          titleSpacing: 0.00,
          centerTitle: true,
          elevation: 0.0,
          actions: const [
            Icon(
              Icons.search,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications_none,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.download,
              size: 25,
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "WEB SHOWS",
              ),
              Tab(text: 'TV'),
              Tab(text: 'MOVIE'),
              Tab(text: 'NEWS'),
              Tab(
                text: 'MUSIC',
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            CarasoulSliderPage(),
            WedShowsPage(),
            TvPage(),
            MoviesPage(),
            NewsPage(),
            MusicPage(),
          ],
        ),
      ),
    );
  }
}
