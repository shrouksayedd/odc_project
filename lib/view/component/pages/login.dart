import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/view/component/pages/home.dart';
import 'package:untitled6/view/component/pages/sign_up.dart';

import '../../../view_model/login/login_cubit.dart';
import '../component/authentication.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) {
        return LoginCubit();
      },
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          LoginCubit login = LoginCubit.get(context);
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                leading: Icon(Icons.arrow_back,color: Colors.white,),

              ),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                        Text("Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        login_Textfield(
                            text: "E-mail",
                            control: email,
                            type: TextInputType.emailAddress),
                        SizedBox(
                          height: 30,
                        ),
                        login_Textfield(

                          type: TextInputType.text,
                          text: "password",
                          control: pass,
                          suffix: login.suffix,
                          onSubmit: (value) {},
                          is_password: login.isPassword,
                          suffixPressed: () {
                            login.changePasswordVisibility();
                          },
                          Icon_color: Colors.orange,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "forget password ?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.orange),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        login_eve_button(
                            function: () {

                              login.Login(email: email, pass: pass,context: context);
                            },
                            text: "Login",
                            Text_color: Colors.white,
                            border_color: Colors.white,
                            button_color: Colors.orange),
                        SizedBox(
                          height: 10,
                        ),
                        login_Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        login_eve_button(
                            function: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup()));
                            },
                            text: "Sign up",
                            Text_color: Colors.orange,
                            border_color: Colors.orange,
                            button_color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
