import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/FABBottomAppBar.dart';
import 'components/HomeFeed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '360Live',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget imageSlider = new Container(
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          NetworkImage(
              'http://static.360live.vn/zst/streaming/new/images/banner/tranh-doat-danh-hieu.png'),
          NetworkImage(
              'https://img.f.360game.vn/photo/2018/rules-1522233175.png')
        ],
        dotSize: 8.0,
        dotSpacing: 15.0,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotBgColor: Colors.purple.withOpacity(0),
        dotColor: Colors.white,
        indicatorBgPadding: 2,
        dotIncreaseSize: 1.1,
      ),
    );
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home screen",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.settings),
          color: Colors.black,
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),color: Colors.black,onPressed: (){},)
        ],
      ),
      body: Column(
        children: <Widget>[
          imageSlider,
          Flexible(child: HomeFeed()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
        elevation: 2.0,
        backgroundColor: Colors.pink[300],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FABBottomAppBar(
        selectedColor: Colors.pink,
        height: 50,
        onTabSelected: (int index) {},
        items: [
          FABBottomAppBarItem(iconData: Icons.home),
          FABBottomAppBarItem(iconData: Icons.play_arrow),
          FABBottomAppBarItem(iconData: Icons.message),
          FABBottomAppBarItem(iconData: Icons.child_friendly),
        ],
      ),
    );
  }
}
