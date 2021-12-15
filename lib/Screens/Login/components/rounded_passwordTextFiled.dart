import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/components/textfield.dart';

import '../../../constants.dart'; 


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}