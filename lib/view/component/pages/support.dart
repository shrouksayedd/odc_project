import 'package:flutter/material.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/page.dart';

class support extends StatelessWidget {
  const support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          title: Text("Support",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              )),
          centerTitle: true,
            leading: IconButton( icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.orange,), onPressed: () { Navigator.pop(context); },)

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    decoration: InputDecoration(
                        label: Text('Name'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ))),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                        label: Text('E_mail'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(20)),
                        //
                        //   borderSide: BorderSide(
                        //     color: Colors.orange,
                        //     width: 2.0,
                        //   ),
                        // ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ))),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    maxLines: 7,
                    decoration: InputDecoration(
                      hintText: "what's makeing you unhappy",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.orange))),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
