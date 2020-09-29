import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/sign up_screen.dart';
import 'dart:async';
import 'package:flutter_login_ui/utilities/constants.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToSignUp();
          } else {
            _navigateToLogin();
          }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return false ;
  }


  void _navigateToSignUp() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => SignUpScreen()
        )
    );
  }

    void _navigateToLogin() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (BuildContext context) => LoginScreen()
          )
      );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Opacity(
              opacity: 0.5,
              child: Image.asset('assets/logos/Splash Screen.png'),
            ),


          ],
        ),
      ),
    );
  }
  }














































