import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/model/login_model.dart';
import 'package:untitled6/view/component/pages/home.dart';
import 'package:untitled6/view/component/pages/page.dart';
import 'package:untitled6/view_model/data_base/network/dio_helper.dart';

import '../../view/component/component/constant.dart';
import '../data_base/network/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context)=>BlocProvider.of(context);



  Login_model? user;
   String massage='';




  Future<void> Login(
  {required  TextEditingController email,
     required TextEditingController pass,
    context,

}
      ) async {
    var json= {

      'email':email.text.toString(),
      'password':pass.text.toString(),
    };
     await DioHelper.postData(url: loginEndPoint, data: json).then((value) {
       user=Login_model.fromJson(value.data);
       if(value.statusCode == 200){
         Token = user!.data!.accessToken.toString();
         Navigator.push(
             context, MaterialPageRoute(builder: (context) => page()));
         print(value.data);
         emit(loginscessed());
       }


      
    }).catchError((e){
      print(e);
      emit(loginerror());});




  }
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined ;

    emit(ChangePasswordVisibilityState());
  }

}
