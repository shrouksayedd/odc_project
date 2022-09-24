import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/view_model/news/news_cubit.dart';

class news extends StatelessWidget {
  const news({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      NewsCubit()..getData(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NewsCubit news=NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                'News',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.black
                ),
              ),
              centerTitle: true,
              leading: Icon(Icons.arrow_back,color: Colors.white,),
            ),
            body:  Padding(
    padding: const EdgeInsets.all(8.0),
    child: news.News_model == null
    ? Center(
    child:CircularProgressIndicator(),
    )
        : ListView.builder(
    itemCount: news.News_model!.data!.length,
    itemBuilder: (context, index) {
      return SingleChildScrollView(
        child: Container(
          child: Stack(

            alignment: AlignmentDirectional.topStart,
            children: [
              Image(
                image: NetworkImage(
                  "${news.News_model!.data![index].imageUrl}",
                ), width: double.infinity,
                fit: BoxFit.cover,

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${news.News_model!.data![index].title}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20,
                          ),),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween,
                            children: [
                              Icon(Icons.share, color: Colors.white,),
                              Container(
                                width: 2,
                                height: 30,

                                color: Colors.white,
                              ),
                              Icon(Icons.copy, color: Colors.white,),

                            ],
                          ),
                        )

                      ],
                    ),

                    SizedBox(height: 100),
                    Text(
                      "${news.News_model!.data![index].date}", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20,
                    ),),
                  ],
                ),
              )


            ],
          ),
        ),
      );
    }))

          );
        },
      ),
    );
  }
}
