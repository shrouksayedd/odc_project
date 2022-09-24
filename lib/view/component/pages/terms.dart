import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:untitled6/view/component/pages/page.dart';
import 'package:untitled6/view/component/pages/settings.dart';
import 'package:untitled6/view_model/terms/terms_cubit.dart';

import '../component/authentication.dart';

class terms extends StatelessWidget {
  const terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => TermsCubit()..getData(),
  child: BlocConsumer<TermsCubit, TermsState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    TermsCubit terms=TermsCubit.get(context);
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
        'Terms',
        style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 30,
        color: Colors.black
    ),
    ),
    centerTitle: true,
          leading: IconButton( icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.orange,), onPressed: () { Navigator.pop(context); },)

    ),
    body:
   terms.term_model == null
    ? Center(
    child:CircularProgressIndicator(),
    )
        : SingleChildScrollView(
     scrollDirection: Axis.horizontal,

          child: Row(

      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text("${terms.term_model!.data!.terms}",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,

              color: Colors.black
          ),)
      ],
    ),
        )
    );
  },
),
);
  }
}
