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

class _LoginPageState extends State<LoginPage>  with SingleTickerProviderStateMixin{

  //here we use SingleTickerProviderStateMixin because only one widget needs animation
  AnimationController logoAnimationController;
  Animation<double> logoAnimation;

  @override
  void initState() {
    // TODO: implement initState
    logoAnimationController=new AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    logoAnimation=new CurvedAnimation(parent: logoAnimationController, curve: Curves.bounceOut);
    logoAnimation.addListener( () => this.setState((){}) );
    logoAnimationController.forward();
    super.initState();
  }
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
                    FlutterLogo(size: logoAnimation.value*100),



                  ],
                ),
              )
          )
        ],
      )
    );
  }
}

