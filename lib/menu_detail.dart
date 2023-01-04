import 'package:flutter/material.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  _MenuDetailState createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridviewPage'),
        ),
        body: GridView.count(
          crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
          childAspectRatio: 1 / 2, //item 의 가로 1, 세로 2 의 비율
          mainAxisSpacing: 10, //수평 Padding
          crossAxisSpacing: 10, //수직 Padding
          children: List.generate(11, (index) {  //item 의 반목문 항목 형성
            return Container(
              color: Colors.lightGreen,
              child: Text(' Item : $index번째 메뉴'),
            );
          }),
        ),
      ),
    );
  }
}