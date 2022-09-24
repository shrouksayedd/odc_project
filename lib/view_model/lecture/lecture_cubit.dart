import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../model/lecture_model.dart';
import '../../view/component/component/constant.dart';
import '../data_base/network/dio_helper.dart';
import '../data_base/network/end_points.dart';


part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  static LectureCubit get(context) => BlocProvider.of(context);
  LectureModel ? lec ;

  void getData(){
    DioHelper.getData(url: lectureEndPoint , token: Token).then((value) {
      lec = LectureModel.fromJson(value.data);
      print("Done");
      emit(Lecturedone());
    }).catchError((e){print(e.toString());
    emit(Lectureerror());}

    );
  }

}
