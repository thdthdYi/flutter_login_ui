import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hinttext;
  final String? errortext;

  const CustomTextFormField({this.hinttext, this.errortext, Key? key})
      : super(key: key);

  Widget build(BuildContext context) {
    //textformfeild border
    const baseBorder = OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 222, 221, 221), width: 1.0));
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hinttext,
          border: baseBorder,
          //선택시 textform border change
          enabledBorder: baseBorder,
          focusedBorder: baseBorder.copyWith(
              borderSide: baseBorder.borderSide
                  .copyWith(color: const Color.fromARGB(255, 158, 208, 249)))),
    );
  }
}
