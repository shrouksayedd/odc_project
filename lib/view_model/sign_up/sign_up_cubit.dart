import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/model/signup.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/login.dart';
import 'package:untitled6/view/component/pages/sign_up.dart';

import '../data_base/network/dio_helper.dart';
import '../data_base/network/end_points.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  static SignUpCubit get(context)=>BlocProvider.of(context);



  SignUpModel? user;
  String massage='';




  Future<void> signup(
      {  required   String name,
        required  String email,
        required String pass,
        required String phoneNumber,
  context
      }
      ) async {
    var json= {


      'name': name,
      'email': email,
      'password': pass,
      'gender': "m",
      'phoneNumber': phoneNumber,
      'universityId': 1,
      'gradeId': 4,
      'roleId': 2,

    };
    await DioHelper.postData(url: registerEndPoint, data: json).then((value) {

      user=SignUpModel.fromJson(value.data);
      if(value.statusCode == 200){

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login()));
        print(value.data);

        emit(SignUpscess());

      }



    }).catchError((e){
      print(e);
      emit(SignUperror());});




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
