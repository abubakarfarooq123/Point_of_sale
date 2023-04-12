import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: <Widget>[
          Container(
          height: 100,
          child: Center(
              child: Text(
                "Forgot Password",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 30
              ),)
          ),
        ),
        ClipRRect(
        borderRadius: new BorderRadius.only(
        topLeft: const Radius.circular(40.0),
    topRight: const Radius.circular(40.0)),
    child: Container(
    height: MediaQuery.of(context).size.height -
    MediaQuery.of(context).size.height / 8,
    width: double.infinity,
    color: Colors.white,
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
              Container(
                height: 800,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Form(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50.0,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue
                        ),
                        margin: EdgeInsets.only(left: 80.0, right: 80, top: 0),
                        child: TextButton(
                          onPressed: () {

                            },
                          child: Text(
                            "Send Email",
                            style: GoogleFonts.roboto(color: Colors.white, fontSize: 13.0),
                          ),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        child: Column(children: [
                          Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,100,0,0),
                                  child: Container(
                                    child: Image.asset("assets/images/logo.png"),
                                    height: 270,
                                    width: 270,
                                  ),
                                ),
                              ]
                          ),

                          SizedBox(height: 30),
                        ]),
                      ),
                    ],
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    ),
        ),
      ],
        ),
    );
  }
}