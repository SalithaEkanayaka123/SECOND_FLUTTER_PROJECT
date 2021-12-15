import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/components/background.dart';
import 'package:flutter_application_1/Screens/Login/components/rounded_passwordTextFiled.dart';
import 'package:flutter_application_1/Screens/Login/components/rounded_textfield.dart';
import 'package:flutter_application_1/Screens/components/rounded_button.dart';

import 'AlreadyHaveAnAccountCheck.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Image.asset(
            "asserts/icons/login.png",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Login",
            press: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return LoginScreen();
              // }));
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          AlreadyHaveAnAcccountCheck(
            press: () {},
          )
          // RoundedButton(
          //   text: "Login",
          //   color: kPrimaryLightColor,
          //   textColor: Colors.black,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
