import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  double? _deviceWidth, _deviceHeight;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [_header(), _SubmitButton()],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth! * 0.06),
        ),
      ),
    );
  }

  Widget _header() {
    return Text(
      "FODO",
      style: TextStyle(
          fontSize: _deviceWidth! * 0.1,
          fontWeight: FontWeight.w600,
          letterSpacing: 10),
    );
  }

  Widget _SubmitButton() {
    return MaterialButton(
      onPressed: () {},
      color: Colors.black,
      height: _deviceHeight! * 0.065,
      minWidth: _deviceWidth! * 0.9,
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: _deviceWidth! * 0.065,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
