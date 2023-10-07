import 'package:donation_app/screens/auth_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AuthPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.cover,
                  )),
              // SizedBox(
              //   height: 4,
              // ),
              const Text(
                "MADAD",
                style: TextStyle(
                    fontSize: 32,
                    height:
                        2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                    color: Colors.redAccent, //font color
                    letterSpacing: 2, //letter spacing
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "An Application Dedicated to Help Humanity",
                style: TextStyle(
                    fontSize: 12,
                    height:
                        2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                    color: Colors.grey, //font color
                    letterSpacing: 2, //letter spacing
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
