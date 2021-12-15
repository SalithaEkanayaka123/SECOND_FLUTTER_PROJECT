import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/components/rounded_textfield.dart';
import 'package:flutter_application_1/Screens/Signup/components/background.dart';
import 'package:flutter_application_1/Screens/components/rounded_button.dart';

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
            "Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Image.asset(
            "asserts/icons/signup.png",
            height: size.height * 0.20,
          ),
          RoundedInputField(
            hintText: "Your Username",
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Your Password",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Sign Up",
            color: Colors.green,
            press: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return LoginScreen();
              // }));
            },
          ),
        ],
      ),
    );
  }
}
