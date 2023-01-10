import 'package:dreamforest/edit/logout.dart';
import 'package:dreamforest/edit/nicknameedit.dart';
import 'package:dreamforest/edit/pswdcheck.dart';
import 'package:dreamforest/mainscreen.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String id;
  String nickname;
  String password;
  Profile(this.nickname, this.id, this.password);


  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 230,
              decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black26,
                      offset: new Offset(0.0, 2.0),
                      blurRadius: 25.0,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32))),
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(16),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Dream Forest',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 2, 171, 92),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 8, right: 16),
                        child: Text(
                          '${widget.nickname}',
                          style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: IconButton(onPressed: () {
                          Navigator.push((context),
                              MaterialPageRoute(builder: (context) => NicknameEdit()));
                        }, icon: Icon(Icons.create)),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, top: 8),
                    child: Text(
                      '',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, top: 8),
                    child: Text(
                      '${widget.id}',
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.lock),
                      Padding(padding:
                      EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: TextButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PasswordCheck()));
                      }, child: Text('Change Password',
                            style: TextStyle(color: Color.fromARGB(255, 2, 171, 92),),)),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.logout),
                      Padding(padding:
                      EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: TextButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Logout()));
                        }, child: Text('Logout',
                              style: TextStyle(color: Color.fromARGB(255, 2, 171, 92),),)),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}