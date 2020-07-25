import"package:flutter/material.dart";

class AppBarPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("images/broker.jpg"),
                width: 80,
                height: 80,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "سمساري",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "دليلك الشامل",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
    );
  }
}
