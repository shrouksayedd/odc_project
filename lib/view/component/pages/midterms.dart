
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view/component/pages/home.dart';
import 'package:untitled6/view/component/pages/page.dart';

import '../../../model/exam_model.dart';
import '../../../view_model/final_cubit/final_cubit.dart';
import '../../../view_model/final_cubit/final_state.dart';
import '../component/authentication.dart';
import '../component/lec.dart';

class MidtermScreen extends StatelessWidget {
  const MidtermScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => ExamsCubit()..getData(),
      child: BlocConsumer<ExamsCubit,ExamsState>(
          listener: (context,state){},
          builder: (context,state){
            ExamsCubit cubit = ExamsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.orange
                  ),
                  onPressed: () {
                    navigateTo(context, page());
                  },
                ),
                title: Text(
                  'Midterms',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.black
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.filter_list_alt,
                      color: Colors.orange,
                      size: 30,
                    ),
                  )
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: cubit.examModel == null
                    ? Center(
                  child: CircularProgressIndicator(),
                )
                    : ListView.builder(
                  itemCount: cubit.examModel!.data!.length,
                  itemBuilder: (context, index) {
                    return card(
                      lectureSubject:cubit
                          .examModel!.data![index].examSubject
                          .toString(),
                      lectureDate: cubit.examModel!.data![index].examDate
                          .toString(),
                      lectureStartTime: cubit
                          .examModel!.data![index].examStartTime
                          .toString(),
                      lectureEndTime:  cubit
                          .examModel!.data![index].examEndTime
                          .toString(),);
                    //  card(text: myCubit.lec!.data![index].lectureSubject.toString(),)
                  },
                ),
              ),
            );

          }),
    );
  }



}
