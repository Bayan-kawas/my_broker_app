import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'layoutPage.dart';
class Required extends StatefulWidget {
  @override
  _RequiredState createState() => _RequiredState();
}

class _RequiredState extends State<Required> {
  String selected = "بيع";

  String place = "";

  final myController = TextEditingController();
  var colorSelected;

  @override
  Widget build(BuildContext context) {
    colorSelected = (selected == "") ? Colors.cyan.shade200 : Colors.white;

    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
          title: AppBarPages(),),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    controller: myController,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'اكتب المنطقة للبحث  ',
                      //   alignLabelWithHint: false,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: BorderSide(
                        color:
                            (selected == "ايجار") ? Colors.black : Colors.grey,
                      ),
                    ),
                    color: (selected == "ايجار")
                        ? Colors.cyan.shade200
                        : Colors.white,
                    onPressed: () {
                      selected = "ايجار";
                      setState(() {});
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      child: Text(
                        "للايجار",
                        style: TextStyle(
                          color: (selected == "ايجار")
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(
                            color: (selected == "بيع")
                                ? Colors.black
                                : Colors.grey)),
                    color: (selected == "بيع")
                        ? Colors.cyan.shade200
                        : Colors.white,
                    onPressed: () {
                      selected = "بيع";
                      setState(() {});
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Text(
                        "للبيع",
                        style: TextStyle(
                          color:
                              (selected == "بيع") ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(0),
                    side: BorderSide(color:Colors.grey,),
                  ),
                  onPressed: () {
                    place = myController.text;
                    if (place != "" && selected != "") {
                      print(place);
                      print(selected);
                      if (selected == "ايجار") {
                        //TODO navigate to rent page
                      } else {
                        //TODO navigate to sale page
                      }
                    } else {
                      print("please enter the place and chose the selected ");
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Text("بحث الان "),
                  ),
                  color: Colors.amber.shade300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
