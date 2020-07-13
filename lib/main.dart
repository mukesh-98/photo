import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo/login/LoginPage.dart';
import 'package:photo/register/RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'photo',
      theme: ThemeData(
        textTheme: GoogleFonts.comfortaaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: WelcomePage(),
    );
  }
}


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
              image: new AssetImage('assets/images/Rectangle.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
            child:Image.asset('assets/images/Group.png', height: 70,)
        ),
         Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                children: [
                  Container(

                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                    child: FlatButton(
                        padding:EdgeInsets.symmetric(horizontal: 45),
                        onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                    child: FlatButton(
                        padding:EdgeInsets.symmetric(horizontal: 45),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage()),
                          );
                        },
                        child: Text(
                            'REGISTER',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )
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


