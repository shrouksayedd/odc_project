import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view/component/pages/add_note1.dart';
import 'package:untitled6/view/component/pages/finals.dart';
import 'package:untitled6/view/component/pages/lecture.dart';
import 'package:untitled6/view/component/pages/midterms.dart';

import 'package:untitled6/view/component/pages/sections.dart';

import '../component/authentication.dart';
import 'events_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(

        children: [
        Text("Orange",
        style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.orange,
        fontSize: 25,
    )),
    SizedBox(
    width: 10,
    ),
    Text("Digital Center",
    style: TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: 25,
    )),
    ],
    ),
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
          ),

          children: [
          InkWell(
            onTap: (){
              navigateTo(context, Lectures());
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 232, 231, 231),
                      shape: BoxShape.circle,
                    ),
                    child:Icon(
                      Icons.menu_book,
                      color: Colors.orange,
                      size: 60,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Lectures",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              navigateTo(context, sections());
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 232, 231, 231),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.book,
                      color: Colors.orange,
                      size: 60,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Sections",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              navigateTo(context, MidtermScreen());
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 232, 231, 231),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.my_library_books_rounded,
                      color: Colors.orange,
                      size: 60,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Midterms",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
               navigateTo(context, finals());
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 232, 231, 231),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.my_library_books_sharp,
                      color: Colors.orange,
                      size: 60,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Finals",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
             navigateTo(context, EventsScreen());
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 232, 231, 231),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.calendar_month,
                      color: Colors.orange,
                      size: 60,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Events",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              navigateTo(context, add_note1());
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 232, 231, 231),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.note_add,
                      color: Colors.orange,
                      size: 60,
                    ),

                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Notes",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
