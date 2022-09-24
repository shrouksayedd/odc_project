import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/model/section_model.dart';

import '../../view/component/component/constant.dart';
import '../data_base/network/dio_helper.dart';
import '../data_base/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context) => BlocProvider.of(context);
  SectionModel ? section ;

  void getData(){
    DioHelper.getData(url: sectionEndPoint , token: Token).then((value) {
      section = SectionModel.fromJson(value.data);
      print("Done");
      emit(section_seccss());

    }).catchError((e){print(e.toString());
    emit(section_error());}

    );
}}
