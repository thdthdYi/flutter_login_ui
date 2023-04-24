import 'package:flutter/material.dart';

import '../util/input_textform.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        //키보드가 올라왔을 때 뒤 기본 스크린을 스크롤 가능
        SingleChildScrollView(
      //drag로 키보드 숨기기 가능
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: const [
            _Title(),
            SizedBox(height: 500.0),
            CustomTextFormField(
              hinttext: '이메일을 입력해주세요.',
            ),
            CustomTextFormField(
              hinttext: '비밀번호을 입력해주세요.',
            ),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "환영합니다.",
      style: TextStyle(fontSize: 30.0),
    );
  }
}
