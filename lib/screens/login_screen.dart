import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => new _MyLoginPageState();

}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text('Hello', style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold),)
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                      child: Text('There', style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),)
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(245.0, 175.0, 0.0, 0.0),
                      child: Text('.', style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold,color: Colors.green,),)
                    ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        )
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        )
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0, ),
                      child: InkWell(
                        child: Text('Forgot password',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/storelist');
                          },
                          child: Center(
                            child: Text('LOGIN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Montserrat'),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('assets/logos/google.jpg')),
                            ),
                            SizedBox(width: 10.0),
                            Center(
                              child: Text(
                                "Login with Google",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                  )
              ),
              SizedBox( height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "New to Kimantara ?",
                    style: TextStyle(
                      fontFamily: 'Montserrat'
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text('Register',style: TextStyle(color: Colors.green,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                  ),
                ],
              ),
            ],
        ),
          ),
      )
    );
  }
}