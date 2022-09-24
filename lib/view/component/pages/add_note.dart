import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/add_note1.dart';

class add_note extends StatelessWidget {
  const add_note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
           title: Text(
          'Add Note',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.black
          ),),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),onPressed: (){
            navigateTo(context, add_note1());
          },color: Colors.black,),
        ),
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 30,),

                TextFormField(
                    decoration: InputDecoration(
                        label: Text('Title'),

                      enabledBorder: OutlineInputBorder(

                        borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),),



                ),),
                SizedBox(height: 20,),
                TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Date'),


                        enabledBorder: OutlineInputBorder(

                          borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: 2.0,
                          ),),

                    )

                ),
                SizedBox(height: 20,),
                TextFormField(
                    maxLines:7,
                    decoration: InputDecoration(
                     hintText:( "Note"),




                        enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),

                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: 2.0,
                          ),


                    )

                ),),


                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: () {
                    navigateTo(context, add_note1());
                  }, child: Row(
                    children: [
                      Icon(
                        Icons.add, color: Colors.white,),


                      Text("Add", style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                       // fontSize: 20,
                ),),
                    ],
                  ), style:ElevatedButton.styleFrom(
                    primary: Colors.orange,

                ),
                ),
              ],
            ),
          ),
        )

    );
  }
}
