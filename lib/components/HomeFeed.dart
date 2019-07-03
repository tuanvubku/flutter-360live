import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeFeed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeFeed();
}

class _HomeFeed extends State<HomeFeed> {
  var homeFeed = [
    {
      "displayName": "G➻Tùng Huyy࿐",
      "avatar": 'http://5.s120.360live.zdn.vn/b/6/3/3/1639224_240_8.jpg'
    },
    {
      "displayName": "Nɕʊɣễղ Mɣ Dʊɣêղ",
      "avatar": 'http://5.s120.360live.zdn.vn/4/d/e/d/1150344_240_31.jpg'
    },
    {
      "displayName": "🌻MH🌻(ÚT)❤️",
      "avatar": 'http://4.s120.360live.zdn.vn/d/7/5/9/1142198_240_23.jpg'
    },
    {
      "displayName": "✪ℬℱℱ✪🦄Ꭾ•ℒᎥnɦ Ᏸé Ᏸỏทɠ Ɲè🍓",
      "avatar": 'http://4.s120.360live.zdn.vn/f/3/4/3/968948_240_256.jpg'
    },
    {
      "displayName": "Ngọc Yến Ruby",
      "avatar": 'http://2.s120.360live.zdn.vn/2/5/0/0/919526_240_7.jpg'
    },
    {
      "displayName": "[MOON]💫🌸Huyền Trân🌸",
      "avatar": 'http://5.s120.360live.zdn.vn/0/1/9/3/564009_240_26.jpg'
    },
    {
      "displayName": "🔥 Bé Xíu 🔥",
      "avatar": 'http://1.s120.360live.zdn.vn/d/0/e/9/1393020_240_46.jpg'
    },
    {
      "displayName": "[🍀] NGỌC QUANG♉️",
      "avatar": 'http://3.s120.360live.zdn.vn/a/4/9/8/1483082_240_17.jpg'
    }
  ];
 
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: homeFeed.length,
        gridDelegate: 
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          
          return Padding(
            child: SingleHomeFeed(
              displayName: homeFeed[index]['displayName'],
              avatar: homeFeed[index]['avatar'],
            ),
            padding: const EdgeInsets.all(2.0),
          );
        });
  }
}

class SingleHomeFeed extends StatelessWidget {
  final displayName;
  final avatar;
  SingleHomeFeed({this.displayName, this.avatar});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
            child: Image.network(this.avatar),
            borderRadius: BorderRadius.circular(8.0))
      ],
    );
  }
}
