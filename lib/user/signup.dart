import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
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
                  child: Text("Registration", style: GoogleFonts.roboto(
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
                height: MediaQuery
                    .of(context)
                    .size
                    .height -
                    MediaQuery
                        .of(context)
                        .size
                        .height / 8,
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
                              offset: Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),

                        child: new Form(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Name',
                                    icon: Icon(
                                      FontAwesomeIcons.user,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Email ID',
                                    errorStyle: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 15.0,
                                    ),
                                    icon: Icon(
                                      FontAwesomeIcons.envelope,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Phone',
                                    icon: Icon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    icon: Icon(
                                      FontAwesomeIcons.lock,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    icon: Icon(
                                      FontAwesomeIcons.userLock,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),

                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                height: 40.0,
                                width: 320.0,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Register',
                                    style: GoogleFonts.roboto(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Already Have an Account? ",
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Login()));
                                        },
                                        child: Text(
                                          "Login",
                                          style: GoogleFonts.roboto(
                                              color: Colors.blue,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}