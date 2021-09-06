import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:with_you/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xffF4A9E8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Some random thought",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff98D4E7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 28),
                          child: Image.asset("images/meditation.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "MEDITATION",
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff98D4E7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 28),
                          child: Image.asset("images/breath.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "BREATHING",
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2.3,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xff98D4E7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Image.asset("images/notes.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "DIARY",
                                style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width/2.3,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xff98D4E7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Image.asset("images/article.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "ARTICLE",
                                style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
