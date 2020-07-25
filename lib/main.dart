import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'requiredPage.dart';
import 'layoutPage.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AppBarPages(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "اهلا بك في دليلك الشامل سمساري ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "انشر اعلانك الخاص مجانا ",
                textAlign: TextAlign.right,
              ),
              color: Colors.cyan.shade200,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 110),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Required(),
                  ),
                );
              },
              child: Text(
                "تصفح اعلانات البيع والايجار ",
                textAlign: TextAlign.right,
              ),
              color: Colors.amber.shade300,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            ),
          ],
        ),
      ),
    );
  }
}
