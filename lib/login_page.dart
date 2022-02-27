import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login Page"),
      ),

      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(),

            new Padding(
                padding:const EdgeInsets.only(top:20.0)
            ),

            new TextField(
              decoration: new InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText:"Username",
              ),
            ),

            new Padding(
                padding: const EdgeInsets.only(top:20.0)
            ),

            new TextField(
              decoration: new InputDecoration(
                icon: Icon(Icons.security),
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText:"Password",
              ),
              obscureText: true,
            ),

            new Padding(
              padding: const EdgeInsets.only(top:40.0),
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text ("Login"),
                  color: Colors.pink,
                  onPressed: (){},
                ),
              ],
            ),

            new Padding(
              padding: const EdgeInsets.only(top:20.0),
            ),

            new TextButton(
                onPressed: (){},
                child: Text("Forgot Password?")
            )
          ],
        ),
      ),
    );
  }
}