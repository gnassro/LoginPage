import 'package:flutter/material.dart';

class AromrHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AromrAuth();
}

class AromrAuth extends State<AromrHome> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff17517D),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'AROMAIR LOGO',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                      color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color(0xFF89a6bc),
                          ),
                          suffixIcon: Icon(
                            Icons.login,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF89a6bc)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xFF89a6bc),
                          ),
                          suffixIcon: Icon(
                            Icons.lock,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF89a6bc)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
                        child: SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Color(0xff005b9),
                            child: Text('Login'),
                            onPressed: () {
                              print(nameController.text);
                              print(passwordController.text);
                            },
                          ),
                        )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          textColor: Colors.white,
                          child: Text('Forgot Password'),
                        ),
                        Flexible(fit: FlexFit.tight, child: SizedBox()),
                        FlatButton(
                          textColor: Colors.white,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                  ],
                )
              ],
            )));
  }
}
