import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/model/news_model.dart';

import '../../view/component/component/constant.dart';
import '../data_base/network/dio_helper.dart';
import '../data_base/network/end_points.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context) => BlocProvider.of(context);
  NewsModel ? News_model ;

  void getData(){
    DioHelper.getData(url: newsEndPoint , token: Token).then((value) {
      News_model = NewsModel.fromJson(value.data);
      print("Done");
      emit(Newsdone());
    }).catchError((e){print(e.toString());
    emit(Newserror());}

    );
  }
}
