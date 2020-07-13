import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo/bottombar/bottombar.dart';
import 'package:photo/main.dart';
import 'package:photo/register/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.comfortaaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        body: LoginDash(),
      ),
    );
  }
}


class LoginDash extends StatefulWidget {
  @override
  _LoginDashState createState() => _LoginDashState();
}

class _LoginDashState extends State<LoginDash> {
  final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/Rectangle.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child:Container(
              margin: EdgeInsets.only(top: 160),
              child:Image.asset('assets/images/Group.png', height: 40,)
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(60,240,60,0),
          height: 300,
          child:Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:Colors.black,
                      ),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.black,
                        ),
                      ),
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Colors.black
                    ),
                    icon: const Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                    )
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.black,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.black,
                        ),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                      icon: const Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                        ),
                      )
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  child:FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 70),
                      color: Colors.black,
                      onPressed: (){
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BottomDash()),
                          );
                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          )
                      ),
                      FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WelcomePage()),
                            );
                          },
                          child: Text(
                            'Go Back',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


