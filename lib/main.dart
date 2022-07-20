import 'package:flutter/material.dart';

import 'dart:async';

import 'package:mx_player_app/mxplayer/mxplayer_p1.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          MxPlayerP1()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network('https://i.gadgets360cdn.com/large/MX-Player-For-Android_1556780363582.png'),
      height:2000,
      width: double.infinity,
    );
    
  }
}
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//         child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }