import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[500],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Demo Bar"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                foregroundColor: Colors.green,
                backgroundImage: AssetImage("images/naveen.jpg"),
              ),
              Text(
                  "Naveen Jagirdhar",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(
                    Icons.phone,
                    color: Colors.teal.shade100,
                    ) ,
                  title: Text(
                    "+91 8500000780",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(
                    Icons.email,
                    color: Colors.teal.shade100,
                  ),
                  title: Text(
                    "jagirdharNaveen69@gmail.com",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
