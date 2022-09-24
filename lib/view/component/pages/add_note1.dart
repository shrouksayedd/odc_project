import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/add_note.dart';
import 'package:untitled6/view/component/pages/login.dart';
import 'package:untitled6/view/component/pages/page.dart';

class add_note1 extends StatelessWidget {
  const add_note1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

          appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
        'Add Note',
        style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 30,
        color: Colors.black
        )),
        leading: IconButton(
        icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.orange
    ),
    onPressed: () {
    navigateTo(context, page());
    },
    ),),
          backgroundColor: Colors.white,

         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add,color: Colors.white,),

           onPressed: (){
             navigateTo(context, add_note());
           },
           backgroundColor:Colors.orange ,
          )

    );
  }
}
