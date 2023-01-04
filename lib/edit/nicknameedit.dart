import 'package:flutter/material.dart';

class NicknameEdit extends StatelessWidget {
  const NicknameEdit({Key? key}) : super(key: key);

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
              child: Text('닉네임 수정하기'),
            ),
            const TextField(
              cursorColor: Color.fromARGB(255, 2, 171, 92),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusColor: Color.fromARGB(255, 2, 171, 92),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 2, 171, 92),),
                ),
                labelText: '수정할 닉네임을 입력해주세요',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 2, 171, 92),
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 171, 92),
                    ),
                    child: Text('수정')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
