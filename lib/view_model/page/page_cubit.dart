import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/view/component/pages/home.dart';
import 'package:untitled6/view/component/pages/news.dart';
import 'package:untitled6/view/component/pages/settings.dart';

part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(PageInitial());
  static PageCubit get(context)=>BlocProvider.of(context);
  int current_index=0;




  List<Widget> screen=[
   home_screen(),
   news(),
    settings(),


  ];
  void changeindex(index){
    current_index=index;

    emit(changenevbottom_state());
  }
}
