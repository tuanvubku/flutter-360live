import 'package:flutter/material.dart';

class HomeSmallFeed extends StatefulWidget {
  @override
  _HomeSmallFeedState createState() => _HomeSmallFeedState();
}

class _HomeSmallFeedState extends State<HomeSmallFeed> {
  var homeSmallFeed = [
    {
      "displayName": "[ ROSE ] Quốc Hiển",
      "avatar": 'http://1.s120.360live.zdn.vn/e/5/0/c/749165_240_11.jpg'
    },
    {
      "displayName": "[Sky🌸] Hương Xù🎀",
      "avatar": 'http://3.s120.360live.zdn.vn/1/e/9/2/1565542_240_11.jpg'
    },
    {
      "displayName": "[💎]❖︵🅺🅷🅾á_❸❼︵✰",
      "avatar": 'http://3.s120.360live.zdn.vn/e/e/8/2/1295652_240_12.jpg'
    },
    {
      "displayName": "✪ℬℱℱ✪🦄Ꭾ•ℒᎥnɦ Ᏸé Ᏸỏทɠ Ɲè🍓",
      "avatar": 'http://2.s120.360live.zdn.vn/f/a/5/4/1635216_240_20.jpg'
    },
    {
      "displayName": "[G] 🌹 Linhh Hihi 💁🏻",
      "avatar": 'http://4.s120.360live.zdn.vn/1/d/9/f/1554778_240_18.jpg'
    },
    {
      "displayName": " <☘> VyVy",
      "avatar": 'http://5.s120.360live.zdn.vn/c/e/4/0/1259094_240_20.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeSmallFeed.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleHomeSmallFeed(homeSmallFeed[index]['displayName'],
            homeSmallFeed[index]['avatar']);
      },
    );
  }
}

class SingleHomeSmallFeed extends StatelessWidget {
  final displayName;
  final avatar;
  SingleHomeSmallFeed(this.displayName, this.avatar);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
      children: <Widget>[Image.network(
        avatar,
        fit: BoxFit.fitWidth,
        )],
    );
  }
}
