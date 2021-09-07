import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatefulWidget {
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

Widget customAppBar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40, left: 16),
          child: Row(
            children: [
              Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color(0xFF363636),
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Image.asset("images/contact.png"),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      child: Image.asset("images/bell.png"),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return customAppBar(context);
  }
}
