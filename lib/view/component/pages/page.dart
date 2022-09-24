import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled6/view_model/page/page_cubit.dart';

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return BlocProvider<PageCubit>(
     create: (context) => PageCubit(),
     child: BlocConsumer<PageCubit,PageState>(
       listener: (context,state)=>{},
       builder: (context,state){
         var cubit =PageCubit.get(context);
         return Scaffold(
         body: cubit.screen[cubit.current_index],
         bottomNavigationBar: BottomNavyBar(
          selectedIndex: cubit.current_index,
             showElevation: true,
             onItemSelected: (index){
    cubit.changeindex(index);
    },
    items: [
    BottomNavyBarItem(
    icon: Icon(
    Icons.home_outlined  ,
    size: 30,
    ),
    title: Text(
    'Home',
    style: GoogleFonts.poppins(
    fontSize: 18
    ),
    ),
    activeColor: Colors.orange,
    inactiveColor: Colors.black
    ),
    BottomNavyBarItem(
    icon: Icon(
    Icons.newspaper_outlined,
    size: 30,
    ),
    title: Text(
    'News',
    style: GoogleFonts.poppins(
    fontSize: 18
    ),),
    activeColor: Colors.orange,
    inactiveColor: Colors.black
    ),
    BottomNavyBarItem(
    icon: Icon(
    Icons.settings_outlined,
    size: 30,
    ),
    title: Text(
    'Settings',
    style: GoogleFonts.poppins(
    fontSize: 18
    ),
    ),
    activeColor: Colors.orange,
    inactiveColor: Colors.black
    ),
    ],
    )
    );

         // return  Scaffold(
         //
         //     body: cubit.screen[cubit.current_index],
         //
         //     bottomNavigationBar: BottomNavigationBar(
         //
         //       currentIndex: cubit.current_index,
         //       items:cubit.nvitems,
         //       onTap: (index){
         //         cubit.changeindex(index);
         //       },
         //     ),
         //
         //
         // );
       },
     ),
   );
  }
}
