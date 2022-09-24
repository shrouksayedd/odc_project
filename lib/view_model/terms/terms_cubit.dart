import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/model/term.dart';

import '../../view/component/component/constant.dart';
import '../data_base/network/dio_helper.dart';
import '../data_base/network/end_points.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());
  static TermsCubit get(context) => BlocProvider.of(context);
  TermModel ? term_model ;

  void getData(){
    DioHelper.getData(url: termsEndPoint , token: Token).then((value) {
      term_model = TermModel.fromJson(value.data);
      print("Done");
      emit(termsdone());
    }).catchError((e){print(e.toString());
    emit(termserror());}

    );
  }
}
