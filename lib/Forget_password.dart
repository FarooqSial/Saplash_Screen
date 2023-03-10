import 'package:flutter/material.dart';
import 'package:saplash_screen/Notification_Screen.dart';
import 'package:saplash_screen/Login_Screen.dart';

class SeventhPage extends StatelessWidget {
  const SeventhPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SixthPage(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Forgot Password",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'PoppinsMedium',
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image(
                height: 229,
                width: 230,
                image: AssetImage(
                  'images/6321599 1.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'Select email should we use to reset\n Password',
                style: TextStyle(
                  color: Color(0xff7D7D7D),
                  fontSize: 13,
                  fontFamily: 'PoppinsMedium',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 13,
                      fontFamily: 'PoppinsMedium',
                    ),
                  ),
                  Container(
                    height: 11,
                    width: 11,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xffF7BB0E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EighthPage(),
                    ),
                  );
                },
                child: Container(
                  height: 36,
                  width: 148,
                  decoration: BoxDecoration(
                    color: Color(0xffF7BB0E),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontFamily: 'PoppinsSemiBold',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
