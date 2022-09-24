import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/component/sign.dart';
import 'package:untitled6/view/component/pages/login.dart';
import 'package:untitled6/view_model/sign_up/sign_up_cubit.dart';

class signup extends StatelessWidget {
  signup({Key? key}) : super(key: key);
  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(
      child: Text("male"),
      value: ("male"),
    ),
    DropdownMenuItem(
      child: Text("female"),
      value: ("female"),
    ),
  ];
  List<DropdownMenuItem<String>> grads = [
    DropdownMenuItem(
      child: Text("level1"),
      value: ("level2"),
    ),
    DropdownMenuItem(
      child: Text("level2"),
      value: ("level2"),
    ),
    DropdownMenuItem(
      child: Text("level3"),
      value: ("level3"),
    ),DropdownMenuItem(
      child: Text("level4"),
      value: ("level4"),
    ),
  ];
  List<DropdownMenuItem<String>> uni = [
    DropdownMenuItem(
      child: Text("AUC"),
      value: ("AUC"),
    ),
    DropdownMenuItem(
      child: Text("cairo"),
      value: ("cairo"),
    ),
    DropdownMenuItem(
      child: Text("Banha"),
      value: ("Banha"),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    var pass = TextEditingController();

    var email = TextEditingController();
    var phone = TextEditingController();
    var name = TextEditingController();
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignUpCubit sign_up = SignUpCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: Icon(Icons.arrow_back,color: Colors.white,),

            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Orange",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                              fontSize: 30,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Digital Center",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 30,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text("Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    login_Textfield(
                        text: "Name", control: name, type: TextInputType.text),
                    SizedBox(
                      height: 15,
                    ),
                    login_Textfield(
                        text: "E-mail",
                        control: email,
                        type: TextInputType.emailAddress),
                    SizedBox(
                      height: 15,
                    ),
                    login_Textfield(
                        suffix: sign_up.suffix,
                        onSubmit: (value) {},
                        is_password: sign_up.isPassword,
                        suffixPressed: () {
                          sign_up.changePasswordVisibility();
                        },
                        text: "password",
                        control: pass,

                        Icon_color: Colors.orange,
                        type: TextInputType.text,
                        ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    login_Textfield(
                        text: "Phone-Number",
                        control: phone,
                        type: TextInputType.phone),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Gender",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                  fontSize: 20,
                                )),
                            dropbuttom(items: items, value: 'female'),
                          ],
                        ),
                        Column(
                          children: [
                            Text("University",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                  fontSize: 20,
                                )),
                            dropbuttom(items: uni, value: 'AUC'),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("grade",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                  fontSize: 20,
                                )),
                            dropbuttom(items: grads, value: "level4"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    login_eve_button(

                        text: "Login",
                        Text_color: Colors.white,
                        border_color: Colors.white,
                        button_color: Colors.orange,
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login()));

                        }),
                    SizedBox(
                      height: 10,
                    ),
                    login_Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    login_eve_button(
                        text: "sign up",
                        Text_color: Colors.orange,
                        border_color: Colors.orange,
                        button_color: Colors.white,
                        function: () {
                          sign_up.signup( context: context,
                              name: name.text.toString(),
                              email: email.text.toString(),
                              pass: pass.text.toString(),
                              phoneNumber: phone.text.toString());

                        }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
