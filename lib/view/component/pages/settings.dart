import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/login.dart';
import 'package:untitled6/view/component/pages/our_partners.dart';
import 'package:untitled6/view/component/pages/support.dart';
import 'package:untitled6/view/component/pages/terms.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
        'Settings',
        style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 30,
        color: Colors.black
        ),),
        leading: Icon(Icons.arrow_back,color: Colors.white,),),
 backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text("FAQ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                "Terms & conditions",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {
                  navigateTo(context, terms());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {
                  navigateTo(context, our_partners());
                },
              ),
              title: Text(
                "Our Partenrs",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                "Support",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {
                  navigateTo(context, support());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {
                  navigateTo(context, login());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
