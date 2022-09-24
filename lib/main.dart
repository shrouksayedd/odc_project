import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/view/component/component/authentication.dart';
import 'package:untitled6/view/component/pages/add_note.dart';
import 'package:untitled6/view/component/pages/home.dart';
import 'package:untitled6/view/component/pages/login.dart';
import 'package:untitled6/view/component/pages/news.dart';
import 'package:untitled6/view/component/pages/page.dart';
import 'package:untitled6/view/component/pages/settings.dart';
import 'package:untitled6/view/component/pages/sign_up.dart';

import 'package:untitled6/view_model/data_base/network/dio_helper.dart';
import 'package:untitled6/view_model/data_base/network/end_points.dart';

import 'bloc_obser.dart';


void main()async {
   Bloc.observer = MyBlocObserver();

    await DioHelper.init();





    // runApp(sections());
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(primarySwatch: Colors.orange),

     home:  AnimatedSplashScreen(
       duration: 5000 ,
         splash: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 Text("Orange", style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.orange,
                   fontSize: 30,)),
                 SizedBox(
                   width: 10,
                 ),

                 Text("Digital Center", style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   fontSize: 30,)),
               ],
             ),



             SizedBox(height: 30,),
             ProgressBarAnimation(
               width: 250,
               duration: const Duration(seconds: 5),
               gradient: const LinearGradient(
                 colors: [
                   Colors.orange,
                   Colors.orangeAccent,

                 ],
               ),


               backgroundColor: Colors.grey.withOpacity(0.4),

             ),



           ],
         ),
         nextScreen: login(),


         splashTransition: SplashTransition.fadeTransition,

         backgroundColor: Colors.white))
   );

}








