import 'package:flutter/material.dart';

import 'HomePage.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Center(
                child: Text(
                  'REGISTER',
                  style:TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Container(

                color: Color(0xff98d4e7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(-10),
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    labelText: 'Username *',
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                  },
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: Color(0xff98d4e7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(-10),
                    icon: Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    labelText: 'Password *',
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                  },
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: Color(0xff98d4e7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(-10),
                    icon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    labelText: 'Email *',
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('@')==true) ? 'Do not use the @ char.' : null;
                  },
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: Color(0xff98d4e7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    contentPadding: EdgeInsets.all(-10),
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    labelText: 'Phone Number *',
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                  },
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => HomePage(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 1000),
                        ),
                      );

                    },

                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      backgroundColor: Color(0xff98d4e7),
                      onSurface: Colors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
