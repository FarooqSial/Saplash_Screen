import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saplash_screen/two_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff263238),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 300,
                image: AssetImage('images/logo.png'),
              ),
              Text(
                'TRY OUR NEW TASTE',
                style: TextStyle(
                  color: Color(0xffF7BB0E),
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
