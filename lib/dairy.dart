import 'package:flutter/material.dart';

class Dairy extends StatefulWidget {
  const Dairy({Key? key}) : super(key: key);

  @override
  _DairyState createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.purpleAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(100.0),
                          child: Image.asset(
                            "images/2021-05.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'DIARY',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.5,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    color: Color(0xFF98D4E7),

                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(-15),
                        icon: Icon(
                          Icons.menu_book_rounded,
                          color: Colors.purpleAccent,
                        ),
                        labelText: 'Note Title',
                      ),
                      onSaved: (String? value) {},
                      validator: (String? value) {
                        return (value != null && value.contains('@'))
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                  ),
                  SizedBox(height: 15,),

                  Container(
                    color: Color(0xFF98D4E7),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(-15),
                        icon: Icon(
                          Icons.notes,
                          color: Colors.purpleAccent,
                        ),
                        labelText: 'How was your day? :)',
                      ),
                      onSaved: (String? value) {},
                      validator: (String? value) {
                        return (value != null && value.contains('@'))
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                  ),

                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 2,horizontal: 6),
                          backgroundColor: Colors.purpleAccent,
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text(
              'VIEW ALL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),

            backgroundColor: Colors.purpleAccent,
          ),
        );
    }
}
