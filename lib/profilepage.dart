import 'package:dreamforest/edit/logout.dart';
import 'package:dreamforest/edit/nicknameedit.dart';
import 'package:dreamforest/edit/pswdcheck.dart';
import 'package:dreamforest/list/custom.dart';
import 'package:dreamforest/list/edit.dart';
import 'package:dreamforest/list/faq.dart';
import 'package:dreamforest/list/notice.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('프로필', style: TextStyle(color: Color.fromARGB(255, 2, 171, 92),),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('닉네임'),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NicknameEdit()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 2, 171, 92),
                        ),
                        child: Text('수정하기'))
                  ],
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PasswordCheck()));
                },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.grey
                    ),
                    child: Text('비밀번호 수정하기')),
                TextButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Logout()));
                },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.grey
                    ),
                    child: Text('로그아웃')),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 270, 0),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color.fromARGB(255, 2, 171, 92),))
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Notice()));
                  },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Text('공지사항')),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 270, 0),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color.fromARGB(255, 2, 171, 92),))
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Edit()));
                  },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black
                      ),
                      child: Text('환경설정')),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 270, 0),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color.fromARGB(255, 2, 171, 92),))
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FAQ()));
                  },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black
                      ),
                      child: Text('FAQ')),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 270, 0),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color.fromARGB(255, 2, 171, 92),))
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Custom()));
                  },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black
                      ),
                      child: Text('고객센터')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

