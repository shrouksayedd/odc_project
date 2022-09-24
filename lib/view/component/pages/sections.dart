
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/page.dart';
import 'package:untitled6/view_model/sections/sections_cubit.dart';

import '../component/lec.dart';



class sections extends StatelessWidget {
  const sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => SectionsCubit()..getData(),
  child: BlocConsumer<SectionsCubit, SectionsState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    SectionsCubit Section =SectionsCubit.get(context);
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
          'sections',
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
          child: Section.section == null
              ? Center(
            child:CircularProgressIndicator(),
          )
              : ListView.builder(
            itemCount: Section.section!.data!.length,
            itemBuilder: (context, index) {
              return card(
                lectureSubject:Section
                    .section!.data![index].sectionSubject
                    .toString(),
                lectureDate: Section.section!.data![index].sectionDate
                    .toString(),
                lectureStartTime: Section
                    .section!.data![index].sectionStartTime
                    .toString(),
                lectureEndTime:  Section
                    .section!.data![index].sectionEndTime
                    .toString(),);
              //  card(text: myCubit.lec!.data![index].lectureSubject.toString(),)
            },
          ),
        ),


    );
  },
),
);
  }
}
