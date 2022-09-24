import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view/component/pages/page.dart';

import '../component/authentication.dart';
import '../component/lec.dart';
import '../../../view_model/lecture/lecture_cubit.dart';

class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..getData(),
      child: BlocConsumer<LectureCubit, LectureState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LectureCubit myCubit = LectureCubit.get(context);
          return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.orange
                  ),
                  onPressed: () {
                    navigateTo(context, page());
                  },
                ),
                title: Text(
                  'Lecture',
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
                padding: const EdgeInsets.all(0.0),
                child: myCubit.lec == null
                    ? Center(
                        child:CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: myCubit.lec!.data!.length,
                        itemBuilder: (context, index) {
                          return card(
                              lectureSubject: myCubit
                                  .lec!.data![index].lectureSubject
                                  .toString(),
                              lectureDate: myCubit.lec!.data![index].lectureDate
                                  .toString(),
                              lectureStartTime: myCubit
                                  .lec!.data![index].lectureStartTime
                                  .toString(),
                              lectureEndTime:  myCubit
                                  .lec!.data![index].lectureEndTime
                                  .toString(),);
                          //  card(text: myCubit.lec!.data![index].lectureSubject.toString(),)
                        },
                      ),
              ));
        },
      ),
    );
    ;
  }
}
