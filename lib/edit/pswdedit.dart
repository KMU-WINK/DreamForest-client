import 'package:dreamforest/profilepage.dart';
import 'package:flutter/material.dart';

class PasswordEdit extends StatelessWidget {
  const PasswordEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 60, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text('비밀번호 수정하기')
            ),
            const TextField(
              cursorColor: Color.fromARGB(255, 2, 171, 92),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusColor: Color.fromARGB(255, 2, 171, 92),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 171, 92),),
                  ),
                  labelText: '새로운 비밀번호를 입력해주세요',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 2, 171, 92),
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 171, 92),
                    ),
                    child: Text('확인')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
