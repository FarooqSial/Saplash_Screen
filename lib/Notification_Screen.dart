import 'package:flutter/material.dart';

class EighthPage extends StatelessWidget {
  const EighthPage({Key? key}) : super(key: key);
  static const List<String> names=[
    'Farooq',
    'Umar',
    'Ali',
    'Sial',
  ];static const List<String> recipeNames=[
    'Farooq',
    'Umar',
    'Ali',
    'Sial',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: Text(
            "Notifcation",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'PoppinsMedium',
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/Ellipse.png'),
            ),
            title: Text(
              "Chicken Wings Recipe",
              style: TextStyle(
                  color: Color(0xffF7BB0E),
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 11),
            ),
            subtitle: RichText(
              text: TextSpan(
                text: 'uploaded by ',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xff847D7D),
                  fontFamily: 'PoppinsRegular',
                ),
                children: [
                  TextSpan(
                    text: names[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff131313),
                      fontSize: 11,
                      fontFamily: 'PoppinsSemiBold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount: names.length,
        ),
      ),
    );
  }
}
