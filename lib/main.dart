import 'package:flutter/material.dart';

void main()=>runApp( new MyApp() );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LoginPage(),
      theme: ThemeData.dark(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Login Page using Flutter") ),
      body: Stack(
        fit: StackFit.expand,
        //to fit stack to whole screen
        children: <Widget>[
          new Image(
            image:new AssetImage('assets/bill.jpg'),
            fit: BoxFit.fill,
            //to fit image to whole screen
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
            //to change opacity of background image

          ),
          Center(
              child: Container(
                margin: EdgeInsets.all(20.0),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("User Name", style: TextStyle(color: Colors.orange)),
                    Text("Password",style: TextStyle(color: Colors.orange)),

                  ],
                ),
              )
          )
        ],
      )
    );
  }
}

