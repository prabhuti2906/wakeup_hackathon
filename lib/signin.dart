import 'package:flutter/material.dart';
import 'package:with_you/register.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20 , 30 , 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(


              padding: EdgeInsets.symmetric(vertical: 25),
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Color(0xff98d4e7),
                child: ClipRRect(

                    child: Image.asset(
                      "images/signinlogo.png",
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            Center(
              child: Text(
                'LOGIN',
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
              color: Color(0xffDDB5E9),

              child: TextFormField(

                decoration: const InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  prefixIcon: Icon(
                  Icons.person,
                  color: Colors.black,

                ),

                  contentPadding: EdgeInsets.all(-10),

                  labelText: 'Username *',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
            ),
      SizedBox(height: 20,),
      Container(
        color: Color(0xffDDB5E9),

        child: TextFormField(

          decoration: const InputDecoration(

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,

            ),

            contentPadding: EdgeInsets.all(-10),

            labelText: 'Password *',
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
    pageBuilder: (c, a1, a2) => RegisterPage(),
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
    );
  }
}

