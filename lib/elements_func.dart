import 'package:flutter/material.dart';

mixin Elements{
  static const Widget spacer = SizedBox(height: 20);
  static const Widget spacer15 = SizedBox(height: 15);

  Widget textField(text) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
          validator: null,
        ),
      ],
    );
  }

  Widget backButton(context){
    return OutlinedButton(
      onPressed: () => {
        Navigator.pop(context)
      },
      child: const Text(
        "Back",
      ),
    );
  }
}