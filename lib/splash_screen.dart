import 'package:beautiful_loginsignup/loginsignup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacement(
      context,
       MaterialPageRoute(builder: (context) =>LoginsignupScreen()
       ),
    );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Text(
              "Welcome to Login \n and Signup page ",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
