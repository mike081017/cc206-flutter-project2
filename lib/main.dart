import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // UI
      brightness: Brightness.light,
      primaryColor: Colors.blue[800],
      accentColor: Colors.blue[600],
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late String title;
  String text = "No recent log in attempt";
  late String title2;

  void _setText() {
    setState(() {
      text = "A username {" + title + "} with password {" + title2 + "} is trying to log in";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Image.network( "https://www.pngkit.com/png/full/0-4506_facebook-logo-png-transparent-facebook-icon-small-png.png", 
       height: 50, 
       width: 50, ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Pinterest',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                onChanged: (value) => title = value,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onChanged: (value) => title2 = value,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text('Log In'),
                  onPressed: _setText,
                )),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Calibri',
                    fontSize: 17,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}