
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/view_model/data_base/network/dio_helper.dart';
import 'package:untitled6/view_model/final_cubit/final_state.dart';

import '../../model/exam_model.dart';
import '../../view/component/component/constant.dart';
import '../data_base/network/end_points.dart';


class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());

  //single instance
  static ExamsCubit get(context) => BlocProvider.of(context);

  ExamModel? examModel;



  void getData(){
    DioHelper.getData(url: userExamsEndPoint , token: Token).then((value) {
      examModel = ExamModel.fromJson(value.data);
      print("Done");
      emit(examedone());
    }).catchError((e){print(e.toString());
    emit(examerror());}

    );
  }

}


